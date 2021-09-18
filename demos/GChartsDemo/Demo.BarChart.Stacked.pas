unit Demo.BarChart.Stacked;

interface

uses
  System.Classes, Demo.BaseFrame, cfs.GCharts;

type
  TDemo_BarChart_Stacked = class(TDemoBaseFrame)
  public
    procedure GenerateChart; override;
  end;

implementation

procedure TDemo_BarChart_Stacked.GenerateChart;
var
  Chart: IcfsGChartProducer;   // Defined as TInterfacedObject No need try..finally
begin
  Chart := TcfsGChartProducer.Create;
  Chart.ClassChartType := TcfsGChartProducer.CLASS_BAR_CHART;

  // Data
  Chart.Data.DefineColumns([
    TcfsGChartDataCol.Create(TcfsGChartDataType.gcdtString, 'City'),
    TcfsGChartDataCol.Create(TcfsGChartDataType.gcdtNumber, '2010 Population'),
    TcfsGChartDataCol.Create(TcfsGChartDataType.gcdtNumber, '2000 Population')
  ]);
  Chart.Data.AddRow(['New York City, NY', 8175000, 8008000]);
  Chart.Data.AddRow(['Los Angeles, CA', 3792000, 3694000]);
  Chart.Data.AddRow(['Chicago, IL', 2695000, 2896000]);
  Chart.Data.AddRow(['Houston, TX', 2099000, 1953000]);
  Chart.Data.AddRow(['Philadelphia, PA', 1526000, 1517000]);

  // Options
  Chart.Options.Title('Population of Largest U.S. Cities');
  Chart.Options.ChartArea('width', '50%');
  Chart.Options.IsStacked(True);
  Chart.Options.hAxis('title', 'Total Population');
  Chart.Options.hAxis('minValue', 0);
  Chart.Options.vAxis('title', 'City');

  // Generate
  GChartsFrame.DocumentInit;
  GChartsFrame.DocumentSetBody('<div id="Chart" style="width:100%;height:100%;"></div>');
  GChartsFrame.DocumentGenerate('Chart', Chart);
  GChartsFrame.DocumentPost;
end;

initialization
  RegisterClass(TDemo_BarChart_Stacked);

end.
