Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F7AB65B9AE
	for <lists+linux-man@lfdr.de>; Tue,  3 Jan 2023 04:29:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236632AbjACD3G convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 2 Jan 2023 22:29:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236580AbjACD3C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 22:29:02 -0500
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2127.outbound.protection.outlook.com [40.107.95.127])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A490CE03
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 19:29:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PK7kEgVTbuS0ovDjBa+VmaKII0nRvnCRF3kCtuKtRrrjAa3BHmZcK/7GeJEDOOaxmkeO0TsPIpHTBqxYkfrGlz3qht1Wlsm4/ZNYOPN2hoSLyTjucftmawOnV7yV3ShL4mUIRe1KHQqz4XPqu1T4kPsWcOJ3JevKL6G6FCtXasCyVrCHrXNI/BNN+9g+IBdJO2AmhBAhDMP6nQTrCGg1fksDYuBqnN59RlQ0pBr+XgMxgchnGid/91LrheFr9rc+xKh0VNfELGLVePcu9ghtw0iD3eMQXvcqBczM3UsR8Tc1mNefXBT4tLAkkSBa9le/mkYfQRlK+r9HEGF8IdQAxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SPWCjSBFmp5lpKHeJ3q2Tn5TdHRIzvorTCkxgQKKWvk=;
 b=ltnjdhh92ZSi0mim5xldDgntwTqVAKmhQ7i4uHqfECFa45tJA1+5BXNGk76aUToktOxIUNKq0lmi/Axl6yP+fnp98DpcNDYHgHhIT8qr1Smq3JvDLhXdrbfqanaVadsqTPoX9YfgK7a5pBC7r0EjDxyJrMfuFaRLNjJcdIgkAGnkWASuIBiu+eRwQmW0Iw6Syc9ffaUiHBNCL9iJT2AYFVrUe3Grx6qIK4WPrUxfm0/yXEFmq/g2Hl66e/XQz+J1GIZhHnaIrPXLQQDNvTjOSHnHSKNtBqjSgNhAzrbuPJI+2bBHcI5oZnKIRN3sSiH9OcAX6SP0IdG4I9TfDHiRng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nickgregory.me; dmarc=pass action=none
 header.from=nickgregory.me; dkim=pass header.d=nickgregory.me; arc=none
Received: from BYAPR10MB3653.namprd10.prod.outlook.com (2603:10b6:a03:11d::11)
 by CH3PR10MB7117.namprd10.prod.outlook.com (2603:10b6:610:126::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 03:28:59 +0000
Received: from BYAPR10MB3653.namprd10.prod.outlook.com
 ([fe80::c382:5e06:e62a:9494]) by BYAPR10MB3653.namprd10.prod.outlook.com
 ([fe80::c382:5e06:e62a:9494%7]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 03:28:58 +0000
From:   Nick Gregory <nick@nickgregory.me>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "ccross@google.com" <ccross@google.com>
Subject: [PATCH] prctl.2, proc.5: Document VMA naming
Thread-Topic: [PATCH] prctl.2, proc.5: Document VMA naming
Thread-Index: AQHZHyOEYeJzEJdMekeksXb0hesjzA==
Date:   Tue, 3 Jan 2023 03:28:58 +0000
Message-ID: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nickgregory.me;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR10MB3653:EE_|CH3PR10MB7117:EE_
x-ms-office365-filtering-correlation-id: 28fe9452-ed37-4319-905a-08daed3aa6b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R+fJK06hrtcSdeLkH/YNumrKQp10srylGVMlUHO2wV/QxjJU7ysrhob/fJDnyA1xsd5CtswC6BPkkf9OL/6Y0JiBRRMjWdKqpFVhbVG+LJHc+m9wiItpYe13TvpwND8Zj3sVXhdZEvcna5zKEAHKjZ7pKmvUqk5g31jgTQ2X7x6Dm8xHcGvObXJx9ECuhXwi5wjRf+4JCWoFlUWuQsVTZFnryjLLukbyr7uhWFjZhcLWC2Msez88L05LpbY9iefPkezEfrWzTOo8MQgw0F9m2hKYOF1Htg+TGGvyk7+8RQMPrqKCUuaLXZUiSoMX5N1xSaWJQeqNT7cOLAxFkqBFmJIxxx5wIQ4QU4qZGSr4ilk+6l0exq4q0kylYVsf9iRfJNGbZ3lXxVnmpDPBadwoaeaZ83hC3Fz2XyFtnbbYPS8rDKXCReeQ0woBqFaOMGiqbhJgU2S40sHWs6wbHdOmWmH7I9t6AU7OGygCg0yXy4hlfSO2zUQdukg7P/f+2ytBY/chrta9vExureXDFpyX1CGd+tv3Ft2d46l7Qa3O8zETCq2rN/0vLLaiGj8bDQmMoQ0Vr7IUkErnXmNjbRFQnC0W8Cg/WaAwCRRhRji4IJCDA7gTsfqH9g7IevO9tIRat6zO6GPEe6Jryd4TQoblmDdyiykOEUu7XsmE6aMW9DjKp9wA2ZGyP7NpS9hnB788Wat4jz4+n11Q90l/QorAX9gCvc9uQOSqg5kSb/0jWcmPPW2rm49nbcXGBwr4Sw8KPCHTKaW+JcomQ/YuUa2TGA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3653.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(346002)(136003)(396003)(39830400003)(451199015)(6512007)(186003)(2906002)(966005)(6486002)(478600001)(71200400001)(6506007)(66556008)(66946007)(2616005)(91956017)(76116006)(66446008)(66476007)(64756008)(4326008)(8676002)(41300700001)(316002)(5660300002)(83380400001)(33656002)(122000001)(8936002)(38100700002)(110136005)(36756003)(38070700005)(86362001)(22166006)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NDNbioZdH4M7n64G2wJXhM4eBtDme2SHfPi45H5Uh/spfcOvTUH2rHNgu00z?=
 =?us-ascii?Q?gE+DDKm4HQ6UgIPjXOLQ8+SoIc1fPirm3vkpNISLgNgCLkWst0BF3h+fUgb6?=
 =?us-ascii?Q?filj1cWSfPa4zu8D8hUOpFvQqPuZAz1MwsAPT79YOBouQTYn5aTH4xLEgxRX?=
 =?us-ascii?Q?Y7F9MKydVxxyTiblPBIIe3SowN53kazsAKFstORsmNAZrKr9NoggIafCfnx2?=
 =?us-ascii?Q?JqYAhtDLYFnW0iloeVE2vzlpXfr0fhN78fm5KoOJgwmvNfgT4IcbW+lc2UF4?=
 =?us-ascii?Q?b1A9W5gAZtMI3tQ+JaIkSwIDZpa3hj/gFYraG7QjJbxxI9Ym2G+/081nM/bg?=
 =?us-ascii?Q?gQyzcwa1eA8KL9sng77OqBP81COam9l0zYqLtK6jLtWz8yBEHG77VI7lzJt2?=
 =?us-ascii?Q?lj8hVYeq1TewoK9Dq+tD4BTU0Wra77enNbimNRWDbl1S0zQgyRF5kCe43tdh?=
 =?us-ascii?Q?PXGwEA+/7RHJVnu5QYJqH5GwNFaCBy8FIcBJmaYH7FFWu7VmD+KP78qBdMZA?=
 =?us-ascii?Q?0XHV7k8Lz638gXEYWFLNde8lO6SpHc/RdkjGlf6Wtgn94VCRLgYw0LE7U/XJ?=
 =?us-ascii?Q?ipkJQ05GTWFq2Eby6Blg/R7AgCYT9NSxPiKu9TImlp51Pu2FvO0kAQX62Yp6?=
 =?us-ascii?Q?aIeAHH0EPZjzT7GPnVomixVxAlq3xvWgh7Ykc4FQ60tjt8HDNaDs4rSRerJx?=
 =?us-ascii?Q?AbZYc9F2FAugKbKMtVyX5fRR78HSzrTPEng1gAMMXbPJmp5dA02u5kHwwPKf?=
 =?us-ascii?Q?Q8uvSMwfsjHQr1h/8VlI256f2KhIpqIfVEMaRHN4fpNmuIIx+ohIuGLWyZsV?=
 =?us-ascii?Q?nWltVbok4Hv1lEouPRa9JFfr4g/7MkZnlp+CcqDGHqBbN8aomWHvWBN2LjBa?=
 =?us-ascii?Q?jkTXGtdU8X4wRgQU6fIIwDqzIpIoTCEHQaKBMsFocmpZvff+F1zlyylZCIOj?=
 =?us-ascii?Q?nHgediLosdoYXD0Fcu+V/gvOR/bOHfk9E4AIvbkf3xcF9/fw5hEvVY8wcALZ?=
 =?us-ascii?Q?B1ZjgqnWsi5GymY14vMJc9IyuR1Z+MNCPYkcdZFrHXGh40ZN1nLYqYrY5Efs?=
 =?us-ascii?Q?e56mW19jyjGagz/+zNc1Ac2qOKm7Zon0E3yoPH5dCZfaM79JxjN/eTZYAJMc?=
 =?us-ascii?Q?JMR5YOKT4i8Gp7M52978RoRaO0krPkqYuYggnfCtdAbTuWvmyN+s4fiUW2Vh?=
 =?us-ascii?Q?WIjclg4NHnpBUHnRl5Ob32OuhmBpCc/KrE7Kt82JoRnv6qH0x8VcjRw2UQX/?=
 =?us-ascii?Q?Hn+/NwM+2YXwQLcJOIWs/pNDC235OR72LXnn3+mKGz9sFEc1xstb3vf+Rde7?=
 =?us-ascii?Q?dUiKKde3AK+qSp27MqoG99UvBheEJmRfO+dInK2Ov7HA1QGr4b1WDnzx7JAD?=
 =?us-ascii?Q?zFDGhy4YOtzkzU+9V0jB793VaoNQYbvAAJOdcCkh//mdmphLnuCGrIgq2i7H?=
 =?us-ascii?Q?AVbGgP7q3taELpiPgXZyfgh92plCaxScfq1qt+cCzti5BOC//H0VzJnbgl7Q?=
 =?us-ascii?Q?2sSArS7EGHyOFpr0b0OQcQe2+BjEvLaZGKsDIRUmMMIHCzqiGGdhfQG2VpmK?=
 =?us-ascii?Q?pENSVd7+lytatY+n+5GiWj7Zn3ZhXsq+RLOUPAYU38IptBS6D0/7ajIzBbXh?=
 =?us-ascii?Q?brBVsJScJYEFD1qZC5jNItadiAf6SViabirQ5GgEUkb7n2wtajeJFcwabr1l?=
 =?us-ascii?Q?/zjLzA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FBA665B14AFB3D4FB7353ECBD658251F@namprd10.prod.outlook.com>
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-OriginatorOrg: nickgregory.me
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3653.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28fe9452-ed37-4319-905a-08daed3aa6b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 03:28:58.6655
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53402301-82a7-45d8-a44c-27dc38ab0f60
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qvxfLCdxldcwuo+ziaSoALvYqjxWmFrSl9E/+sFQ4N5ig0wUzEAdfUNAiDfro6bVeGVWm+PKTJNrJR0/sfhiZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7117
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Bring in prctl man page changes from the patch set by Colin Cross
<ccross@google.com> [0], and document the corresponding virtual names in proc.

Signed-off-by: Nick Gregory <nick@nickgregory.me>

[0] https://lore.kernel.org/linux-mm/20211019215511.3771969-2-surenb@google.com/
---
 man2/prctl.2 | 35 +++++++++++++++++++++++++++++++++++
 man5/proc.5  | 14 ++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 74f86ff49..82b8a1b02 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -769,6 +769,41 @@ This feature is available only if the kernel is built with the
 .B CONFIG_CHECKPOINT_RESTORE
 option enabled.
 .RE
+.\" prctl PR_SET_VMA
+.TP
+.BR PR_SET_VMA " (since Linux 5.17)"
+.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
+Sets an attribute specified in
+.I arg2
+for virtual memory areas starting from
+the address specified in
+.I arg3
+and spanning the size specified in
+.IR arg4 .
+.I arg5
+specifies the value of the attribute to be set.
+.IP
+Note that assigning an attribute to a virtual memory
+area might prevent it from being merged with adjacent virtual
+memory areas due to the difference in that attribute's value.
+.IP
+Currently,
+.I arg2
+must be one of:
+.RS
+.TP
+.B PR_SET_VMA_ANON_NAME
+Set a name for anonymous virtual memory areas.
+.I arg5
+should be a pointer to a null-terminated string containing the
+name. The name length including null byte cannot exceed
+80 bytes. If
+.I arg5
+is NULL, the name of the appropriate
+anonymous virtual memory areas will be reset.
+The name can contain only printable ascii characters
+(including space), except '[',']','\','$' and '`'.
+.RE
 .\" prctl PR_MPX_ENABLE_MANAGEMENT
 .TP
 .BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86)"
diff --git a/man5/proc.5 b/man5/proc.5
index 65a4c38e3..e0a64d486 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1372,6 +1372,20 @@ See
 .TP
 .I [heap]
 The process's heap.
+.TP
+.IR [anon: name ] " (since Linux 5.17)"
+.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
+A named private anonymous mapping.
+Set with
+.BR prctl (2)
+.BR PR_SET_VMA_ANON_NAME .
+.TP
+.IR [anon_shmem: name ] " (since Linux 6.2)"
+.\" Commit d09e8ca6cb93bb4b97517a18fbbf7eccb0e9ff43
+A named shared anonymous mapping.
+Set with
+.BR prctl (2)
+.BR PR_SET_VMA_ANON_NAME .
 .in
 .RE
 .IP
-- 
2.39.0


