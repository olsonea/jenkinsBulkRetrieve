/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class Objects {
    global Objects() {

    }
global virtual class ActionDataObject {
    global String ActionQueueId {
        get;
        set;
    }
    global String Error {
        get;
        set;
    }
    global String EventQueueId {
        get;
        set;
    }
    global Map<String,String> Parameters {
        get;
        set;
    }
    global List<actionHub.Objects.ActionDataRecord> Records {
        get;
        set;
    }
    global Map<String,String> ResponseFields {
        get;
        set;
    }
    global String SourceConnection {
        get;
        set;
    }
    global String SourceConnectionId {
        get;
        set;
    }
    global String SourceObject {
        get;
        set;
    }
    global actionHub.Objects.ActionStatus Status {
        get;
        set;
    }
    global String TargetConnection {
        get;
        set;
    }
    global String TargetConnectionId {
        get;
        set;
    }
    global String TargetObject {
        get;
        set;
    }
    global String TargetParentRecordId {
        get;
        set;
    }
    global ActionDataObject() {

    }
    global actionHub.Objects.ActionDataObject createClone() {
        return null;
    }
    global actionHub.Objects.ActionDataObject createShallowClone() {
        return null;
    }
    global actionHub.Objects.ActionDataObject createShallowPackageClone() {
        return null;
    }
}
global virtual class ActionDataRecord {
    global List<actionHub.Objects.ActionDataObject> ChildDataObjects {
        get;
        set;
    }
    global Map<String,String> NewData {
        get;
        set;
    }
    global Map<String,String> OldData {
        get;
        set;
    }
    global String SourceRecordId {
        get;
        set;
    }
    global String TargetRecordId {
        get;
        set;
    }
    global ActionDataRecord() {

    }
    global actionHub.Objects.ActionDataRecord createClone() {
        return null;
    }
}
global enum ActionStatus {COMPLETED, ERROR, FATALERROR, INPROGRESS}
global enum DataType {CHECKBOX, ENCRYPTED, NUMERIC, PICKLIST, TEXT}
global enum EmptyStringOption {CONVERTNULLTOSTRING, CONVERTSTRINGTONULL, NOACTION}
global class Member {
    global actionHub.Objects.DataType DataType {
        get;
        set;
    }
    global String DefaultValue {
        get;
        set;
    }
    global String DisplayGroup {
        get;
        set;
    }
    global Integer DisplayOrder {
        get;
        set;
    }
    global String EmptyValueText {
        get;
        set;
    }
    global Boolean Hidden {
        get;
        set;
    }
    global String Id {
        get;
        set;
    }
    global String Label {
        get;
        set;
    }
    global String Name {
        get;
        set;
    }
    global actionHub.Objects.EmptyStringOption NullEmptyStringHandling {
        get;
        set;
    }
    global String PickListValues {
        get;
        set;
    }
    global actionHub.Objects.PropertyType PropertyType {
        get;
        set;
    }
    global Boolean Required {
        get;
        set;
    }
    global String SettingName {
        get;
        set;
    }
    global String SettingValue {
        get;
        set;
    }
    global Boolean SuppressEmptyString {
        get;
        set;
    }
    global Boolean SuppressNull {
        get;
        set;
    }
    global String ToolTip {
        get;
        set;
    }
    global Member() {

    }
}
global class MetaDataObject {
    global String APIName {
        get;
        set;
    }
    global String DisplayName {
        get;
        set;
    }
    global MetaDataObject(String sDisplayName, String sAPIName) {

    }
}
global class Method {
    global List<actionHub.Objects.Member> Arguments {
        get;
        set;
    }
    global String DisplayGroup {
        get;
        set;
    }
    global String Label {
        get;
        set;
    }
    global String Name {
        get;
        set;
    }
    global Integer Order {
        get;
        set;
    }
    global String Prefix {
        get;
        set;
    }
    global String ReturnDataType {
        get;
        set;
    }
    global String ToolTip {
        get;
        set;
    }
    global Method() {

    }
    global Method(String sName, String sLabel, Integer iOrder, String sDisplayGroup, String sReturnDataType, String sToolTip) {

    }
}
global enum PropertyType {ACTIONPARAMETER, ARGUMENT, CONNECTORSETTING, FIELDMAPPING}
}
