Class IRISDemo.DTL.HL7AppTrigger.ADTA03 Extends Ens.DataTransformDTL [ DependsOn = (IRISDemo.Data.Encounter, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 0;

Parameter REPORTERRORS = 0;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='IRISDemo.Data.Encounter' targetClass='EnsLib.HL7.Message' targetDocType='2.5:ADT_A03' create='new' language='objectscript' >
<subtransform class='IRISDemo.DTL.HL7AppTrigger.Sub.MSH' targetObj='target.{MSH}' sourceObj='source' />
<subtransform class='IRISDemo.DTL.HL7AppTrigger.Sub.PID' targetObj='target.{PID}' sourceObj='source.Patient' />
<subtransform class='IRISDemo.DTL.HL7AppTrigger.Sub.PV1' targetObj='target.{PV1}' sourceObj='source' />
<assign value='..ConvertDateTime($ZDATETIMEH(source.EncounterEnd,3,2),"%q(3)","%q")' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='"ADT"' property='target.{MSH:MessageType.MessageCode}' action='set' />
<assign value='"A03"' property='target.{MSH:MessageType.TriggerEvent}' action='set' />
<assign value='"ADT_A03"' property='target.{MSH:MessageType.MessageStructure}' action='set' />
</transform>
}

}
