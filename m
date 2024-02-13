Return-Path: <linux-man+bounces-443-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FAC8535E1
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 17:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EB491F23DA3
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 16:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EA45F564;
	Tue, 13 Feb 2024 16:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="pA/I4gPn"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12olkn2019.outbound.protection.outlook.com [40.92.23.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E04E5DF26
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 16:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.23.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707841281; cv=fail; b=F5JV4dVvZNYcTH/DGhpDwoCbZw58BsVpY2TrFUIzUXoZwFQ4xnC+nnT7ADwFJueHQFQa+O0ofdOB4IlC2ON/Te+873Yah190yfOc2S15w606ownQK9CdaMHR2M7vOaVTT8k+3uoiIqfWUSz0YHy7sGe0CgQ114lEzk8qmH5gV7E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707841281; c=relaxed/simple;
	bh=ujVBMepD8oVOjdPM0h0WtII1pD/OVEKhpUK1X9v4OzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:Content-Type:
	 Content-Disposition:MIME-Version; b=S/V2RynxWHNOWXeIixgZxZIUN+Hr9kO6LINaKxwB8z4clh7NMxyfbC73Hog6B+1wObD3WqvWhefTGY0Jch+Q5EtBm+kg3dbD4htfo1VOZNvzcMaBqCNA3bvYZ64H/a64UnWpyOWKBoBAJ0vsUHWYIwBXWAGisy4PukW4d8vIF88=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=fail (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=pA/I4gPn reason="signature verification failed"; arc=fail smtp.client-ip=40.92.23.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ku9XzRXq0CAxIq2/5MnCZ2becP+RC8IuH6Vf9GaPLB+0xyuJL2jUOWKvRiPosSEpatmWtZsi1CDj2QzElcXJueVFOPtsFh+4YwSXQoWjjMxsTzKliGJxr1KHrtJvZ1gHLd7giVjQS0dZNCRnNdKQLMnBH7mjeoQbu5hPixtfndG10K6rsJkCf64HZPPzytzQreWAgR8XifZfZ5r+o/BMOpYxOBH7hEh5nLzTlhBsfYPa4SyKPHP1sZnL/3RY0PjvSAisi5D/ELxAhuVT6EgiQmdmQaAPgnPY7JiimqGsWt6l+2m2TagJDdFFIzJcwRCfMnz5FwrFmt/bQ7kn9K8ImQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TueD8ZFcRVX/tjBVC5NhvaMuRSAscR0p5u9TfdIjUEA=;
 b=MzoXXMST+V2XoNROnlAzKlK9v12a5Ooha5iyrwFK1WbHmrvaQM+rsrhmgTw9F5apW2k0m8D1wBuU7fVAN0M7kRAwWz412IY7AMZahIYi11T/gWx7gZVnU3+cmc/f12Xixplqqbw/ndNevUV4E/euc7AMFVMnU9qR+IuktASzyTMZBfW9B1pL4mkVLg512x9V6cBBbG5WL9UVcat30ylpCyjl7ozu9aFI++AJm77pghMbIx0dXE+n3JyPrmo4+S94ITHcK9Q4CcWgtdpKPbNMqlEkRGgAkUbJh5BCWsOh357tFnn0btOGfGEtbbSRysYVzjSemTIx/XYMDAuIaI2MLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TueD8ZFcRVX/tjBVC5NhvaMuRSAscR0p5u9TfdIjUEA=;
 b=pA/I4gPn8Bph6M2CVllecNW5Q7Mm673sNpHaZuFpeTueeUMoy0kUezdMeg3refxiGB5YPrc6za64ERNrtMN3fLaRwjz3btLYFSiyNBNMvaX2x9gAM0IGTHgT+0QZ/8XWCeACGWj89F2tFhQ68BM/dkXtf7MgcEAIaEe+fRAdpGtilbI4iZK6vyZZPRfDlTzNy/ACtp49EZu3z/v2d+R3aNt2dtUEQQxrAlTfWlQy1bNvdhsXmPzl94LyOu1kMwyTy9NLFP+ql5rUMrWoK8Bi31nHMGrwQ0SD2sAAS2ukR1aN/rLLSoBdBtyHHcJL3W3uoyS7DhsccKKmQtlNlgVGpA==
Received: from SCZPR80MB7149.lamprd80.prod.outlook.com (2603:10d6:300:75::16)
 by RO2PR80MB7416.lamprd80.prod.outlook.com (2603:10d6:10:e7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.40; Tue, 13 Feb
 2024 16:21:15 +0000
Received: from SCZPR80MB7149.lamprd80.prod.outlook.com
 ([fe80::e5a:a2d2:8b2:8337]) by SCZPR80MB7149.lamprd80.prod.outlook.com
 ([fe80::e5a:a2d2:8b2:8337%7]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 16:21:15 +0000
Date: Tue, 13 Feb 2024 13:21:08 -0300
From: =?utf-8?B?Vmluw61jaXVzIFNjaMO8dHo=?= Piva <vinicius.vsczpv@outlook.com>
To: =?utf-8?B?Vmluw61jaXVzIFNjaMO8dHo=?= Piva <mr.obunda@outlook.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] getdents.2: add note to misleading field "d_off" in struct
 linux_dirent64
Message-ID:
 <SCZPR80MB7149CB22AB958ED99D8D0580FC4F2@SCZPR80MB7149.lamprd80.prod.outlook.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-TMN: [V5n5DgFJGeck+6dIbgdGCH5iZPQqy6Fa]
X-ClientProxiedBy: CP5P284CA0157.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:22a::18) To SCZPR80MB7149.lamprd80.prod.outlook.com
 (2603:10d6:300:75::16)
X-Microsoft-Original-Message-ID:
 <20240213162108.oeyny2gfqpevfcci@flyingdutchman>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SCZPR80MB7149:EE_|RO2PR80MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: a3914c18-1b1a-43d2-fb69-08dc2cafcd65
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	w7lNaQn+TKyi9rWcUf48OXe8WjOnrqmn1Z3N8v7EDgPL+mTnS4GFZfjlvUTPvb2ZP46qa3+8icUi1mbhu3uqGA5ozCYLilhK7tOpDXsSo7g6CbNpnWo3yzsaZW7/L9tXgxjVzhgPqygoEhlYylN3yvIHq0u+8rET7iaGNYqsLrbFv5nP4gMSESRDxVRC8AqIIHYib5RlV3LL8JmgInuIvwf3XBSAs6dsbpRXV9WegosI1IwNIO75/yD8wiHdEO+072T4m67X2v0ZJ2U3uBwNSB4i6IWcji7D5D9GuN/3AP2wSICn57Qy2d0XOYxIEC4tXDQHHURvIY7W7SCFdSMCQ9xHuL72toDEz81W4STpvqyDQEzaREfNsD8RXOIbxR5u1+ha5UV5t+IAYGaymG9aIhbpR/qHCnuIXULKfTsRe7jdLIvTVXTaRRzsz3ZHQivqOsVM86MsBCFZxfTMTmWMWBctEpsoJD7i4T/ECRvoIHnD0ooUC3uU3kh9D4DS2PXiohp51n2BywmLoFdfxo/vQQNWfw4cv+Sxzk6srFMBGg9FgfQEJSQSWuJpavRYYr31L7FQKgc8MjL/ET1VSHyHLlf3Rk4sr9eFuDG2pBTFw8kI8Azfp0n6X1O//BLSIr/2BY4OojcjXhC1ebqoxDMZ+Q==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?xpTWZXLmtqpdp4J3DcQ+it7Eap/KjgemXqfRevzCYaeIJ6GXBBV3BIkIh8?=
 =?iso-8859-1?Q?box/gPf5OEJ63UxwPSk7cnEMIrcmZ1E65TFMvD4R3GIY+AxOi8vClYmgOb?=
 =?iso-8859-1?Q?59E1aDYX+xReV6kqqmkVIIhvjl26/VW8/tLvVNI3yblEu5zhpCxOCNal++?=
 =?iso-8859-1?Q?AS+SP1yb5WPhyeZtLqrlagw4bdomVuFvNTfc+n3j3OZan/v4N7obAipGQR?=
 =?iso-8859-1?Q?zij5gooOM9YCbQ1scmM5yA1YDh7dCcJ9XQ4a/7gjpSmZu2oOLaJEtOa+DY?=
 =?iso-8859-1?Q?U3mO+pUsRGy4ssrQ/tT3hgYx8sCcBrT9377Ti63+uWvvP+qz2VNVCFUT0G?=
 =?iso-8859-1?Q?eB17XOrsxJCtiIx3bESeSCsr25oXhQu51E1o/vmoNhAJByFExNLHWBpU9w?=
 =?iso-8859-1?Q?O8PAdWH0z6r7TaNkrh00AEtN9Ua8JSbs2QuilBqNMPdl5RLXYMycSaavAK?=
 =?iso-8859-1?Q?GWXeUPElVmskynWHJZfX2nDdiYMphVf+zjBRjHSumPjiMJ4krMmg2SUhTz?=
 =?iso-8859-1?Q?RqpkF60OlJet1Z5wHqD3aLm0ptIb10P0fN5OABtSv17Fba6iXxXdLBNOCS?=
 =?iso-8859-1?Q?Weo9UlBLqGozzqw9xywOmH75ZsEt5mULVQHQq3qPS90tT/VNs/02zy5heq?=
 =?iso-8859-1?Q?xnJY5VmW/yIZxYUfexWmtZ7UJ9F5KhB6QaNcZfjejyOsm8zDiOQ3x9cEGm?=
 =?iso-8859-1?Q?UOwjXH0h8H15WRRqNun8NDJ3UU9GRYXwmxf4FFQTASDC6KelSejT+jCUUt?=
 =?iso-8859-1?Q?nZkY7lV0FjXjokbOuB/vmB1hCHKQpb3m53TprHhS7RvyyQRqM80kIrb44w?=
 =?iso-8859-1?Q?DN+R8ZFlyc+CfCut9AM734B/XJYc2se4hxBe0+IK1VG+MRrdBpP4gfOe4R?=
 =?iso-8859-1?Q?KJ43UXzSF4aqXOUprrBJMH6fG+ZwEZXHBye4riEJ+FQEbgWHHxD8Dw3m2D?=
 =?iso-8859-1?Q?vvfD6tKvtm/cWqh3CV2ikXtC56PZHQLT0YbbD2ccyF7+spnIdgplYYxIS4?=
 =?iso-8859-1?Q?+ay8vMcIZeYzwpd8xUZMF7ZRN5bqnEg28tansj52MNI2BTN4zG4lAq2xyQ?=
 =?iso-8859-1?Q?JoO92BBtId9e7w9NjAkfeKN54+swnNgXj1RuvJ+Wz9hi4W5BSQHDjsQpdi?=
 =?iso-8859-1?Q?9fg0AJhGKrCymRNz+0f+z2kIt911tq/+e3pZDbxm2ZdBg1ZfnSsaH8s0gn?=
 =?iso-8859-1?Q?VQZPkjGejKdYVwNF7bs6rHwTaKuUE+jLHdmzimiUAv0cotYNfPjYLnXAoU?=
 =?iso-8859-1?Q?hXLQ2cQfj9zybI8hveFlCcOFau0aVSIPVfPueYHHo=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3914c18-1b1a-43d2-fb69-08dc2cafcd65
X-MS-Exchange-CrossTenant-AuthSource: SCZPR80MB7149.lamprd80.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 16:21:15.8572
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: RO2PR80MB7416

The getdents.2 man page details a pair syscalls: getdents() and
getdents64(), both of which are used to get the entries of a directory.
The results are populated into a structure, with the difference between
both syscalls being mostly bitwidth related.

However, the behaviour or the 'd_off' field in both struct linux_dirent
and linux_dirent64 is wrongly documented in this man page.

According to the current documentation, 'd_off' is used to store the
"Offset to the next linux_dirent [...] the distance from the start of
the directory to the start of the next linux_dirent."

This value, thought, is filesystem dependent, and much of the time it
stores no such offset.

According to readdir.3 [1] manpage:

 > The value returned in d_off is the same as would be returned by
 > calling telldir(3) at the current position in the directory stream.
 > Be aware that despite its type and name, the d_off field is seldom
 > any kind of directory offset on modern filesystems. Applications
 > should treat this field as an opaque value, making no assumptions
 > about its contents; see also telldir(3).

Of course, readdir(3) is a glibc function with no ties to
getdents(2), but it was implemented with such syscall and considering
that readdir(3) doesn't process the data from getdents(2) my belief is
that it inherited said behaviour from it [2]. telldir(3) tells a similar
story.

On the example provided at the end of getdents.2, notable is the d_off
value of the very last entry:

--------------- nread=120 ---------------
inode#    file type  d_reclen  d_off   d_name
       2  directory    16         12  .
       2  directory    16         24  ..
      11  directory    24         44  lost+found
      12  regular      16         56  a
  228929  directory    16         68  sub
   16353  directory    16         80  sub2
  130817  directory    16       4096  sub3

which makes a very sudden jump that is obviously not where the entry is
located.

Rerunning this same example but on a ext4 partition gives you garbage
values:

--------------- nread=176 ---------------
inode#    file type  d_reclen  d_off   d_name
    2050  directory    24 4842312636391754590  sub2
       2  directory    24 4844777444668968292  ..
    2051  directory    24 7251781863886579875  sub3
      12  regular      24 7470722685224223838  a
    2049  directory    24 7653193867028490235  sub
      11  directory    32 7925945214358802294  lost+found
       2  directory    24 9223372036854775807  .

In fact, I've had a hard time reproducing nice d_off values on ext2 too,
so what the filesystem does with d_off must have change since then.

On tmpfs it's a count:

--------------- nread=144 ---------------
inode#    file type  d_reclen  d_off   d_name
       1  directory    24          1  .
       1  directory    24          2  ..
       5  directory    24          3  sub3
       4  directory    24          4  sub2
       3  directory    24          5  sub
       2  regular      24          6  a

I've also not been the first to notice this, as you can see from this
stackoverflow issue opened last year:

https://stackoverflow.com/q/75119224

Safe to say, it's a very unreliable field.

Below is a patch that adds a warning besides the d_off field in both
structures, plus a brief explanation on why this field can be mislea-
ding (while also directing the user towards the readdir.3 man page).

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man3/readdir.3
[2] https://elixir.bootlin.com/glibc/glibc-2.39/source/sysdeps/unix/sysv/linux/readdir.c

Signed-off-by: Vinícius Schütz Piva <vinicius.vsczpv@outlook.com>
---
 man2/getdents.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index 0d4c379..3427f4b 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -67,7 +67,7 @@ structure is declared as follows:
 .EX
 struct linux_dirent {
     unsigned long  d_ino;     /* Inode number */
-    unsigned long  d_off;     /* Offset to next \fIlinux_dirent\fP */
+    unsigned long  d_off;     /* Not an offset; see below */
     unsigned short d_reclen;  /* Length of this \fIlinux_dirent\fP */
     char           d_name[];  /* Filename (null\-terminated) */
                       /* length is actually (d_reclen \- 2 \-
@@ -84,8 +84,12 @@ struct linux_dirent {
 .I d_ino
 is an inode number.
 .I d_off
-is the distance from the start of the directory to the start of the next
-.IR linux_dirent .
+is a filesystem specific value with no specific meaning to userspace, 
+though on older filesystems it used to be the distance from the start 
+of the directory to the start of the next
+.IR linux_dirent ; 
+see
+.BR readdir (3) .
 .I d_reclen
 is the size of this entire
 .IR linux_dirent .
@@ -167,7 +171,7 @@ structures of the following type:
 .EX
 struct linux_dirent64 {
     ino64_t        d_ino;    /* 64\-bit inode number */
-    off64_t        d_off;    /* 64\-bit offset to next structure */
+    off64_t        d_off;    /* Not an offset; see readdir(3) */
     unsigned short d_reclen; /* Size of this dirent */
     unsigned char  d_type;   /* File type */
     char           d_name[]; /* Filename (null\-terminated) */
-- 
2.39.2


