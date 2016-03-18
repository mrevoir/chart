//
//  ChartTableViewCell.swift
//  Chart
//
//  Created by Mike Revoir on 3/18/16.
//  Copyright © 2016 Duke Institute for Health Innovation. All rights reserved.
//

import UIKit
import ResearchKit

class ChartTableViewCell: UITableViewCell {
    @IBOutlet weak var chartView: ORKDiscreteGraphChartView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureChart() {
        chartView.dataSource = DiscreteGraphDataSource()
        chartView.showsHorizontalReferenceLines = true
        chartView.showsVerticalReferenceLines = true
    }
    
    class DiscreteGraphDataSource: NSObject, ORKGraphChartViewDataSource {
        
        var plotPoints =
        [
            [
                ORKRangedPoint(minimumValue: 0, maximumValue: 2),
                ORKRangedPoint(minimumValue: 1, maximumValue: 4),
                ORKRangedPoint(minimumValue: 2, maximumValue: 6),
                ORKRangedPoint(minimumValue: 3, maximumValue: 8),
                ORKRangedPoint(minimumValue: 5, maximumValue: 10),
                ORKRangedPoint(minimumValue: 8, maximumValue: 13),
            ],
            [
                ORKRangedPoint(value: 1),
                ORKRangedPoint(minimumValue: 2, maximumValue: 6),
                ORKRangedPoint(minimumValue: 3, maximumValue: 10),
                ORKRangedPoint(minimumValue: 5, maximumValue: 11),
                ORKRangedPoint(minimumValue: 7, maximumValue: 13),
                ORKRangedPoint(minimumValue: 10, maximumValue: 13),
            ]
        ]
        
        func numberOfPlotsInGraphChartView(graphChartView: ORKGraphChartView) -> Int {
            return plotPoints.count
        }
        
        func graphChartView(graphChartView: ORKGraphChartView, pointForPointIndex pointIndex: Int, plotIndex: Int) -> ORKRangedPoint {
            return plotPoints[plotIndex][pointIndex]
        }
        
        func graphChartView(graphChartView: ORKGraphChartView, numberOfPointsForPlotIndex plotIndex: Int) -> Int {
            return plotPoints[plotIndex].count
        }
        
        func graphChartView(graphChartView: ORKGraphChartView, titleForXAxisAtPointIndex pointIndex: Int) -> String? {
            return "\(pointIndex + 1)"
        }
        
    }

}
