
F
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349
e
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22
I

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
L
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.047 . Memory (MB): peak = 442.789 ; gain = 0.0002default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
<
%Done setting XDC timing constraints.
35*timingZ38-35
`

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
B
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49
2
&Phase 1 Retarget | Checksum: e354528e
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 861.789 ; gain = 419.0002default:default
l

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
@
Eliminated %s cells.
10*opt2
02default:defaultZ31-10
>
2Phase 2 Constant Propagation | Checksum: e354528e
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 861.789 ; gain = 419.0002default:default
]

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101
K
 Eliminated %s unconnected nets.
12*opt2
02default:defaultZ31-12
L
!Eliminated %s unconnected cells.
11*opt2
02default:defaultZ31-11
/
#Phase 3 Sweep | Checksum: e354528e
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 861.789 ; gain = 419.0002default:default
@
4Ending Logic Optimization Task | Checksum: e354528e
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:00:13 . Memory (MB): peak = 861.789 ; gain = 419.0002default:default
7
+Implement Debug Cores | Checksum: e354528e
*common
4
(Logic Optimization | Checksum: e354528e
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
@
4Ending Power Optimization Task | Checksum: e354528e
*common
�

%s
*constraints2n
ZTime (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 861.789 ; gain = 0.0002default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
692default:default2
692default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:122default:default2
00:00:132default:default2
861.7892default:default2
419.2582default:defaultZ17-268


End Record