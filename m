Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 252F86611FE
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 23:19:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbjAGWT4 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sat, 7 Jan 2023 17:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbjAGWTy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 17:19:54 -0500
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2092.outbound.protection.outlook.com [40.107.95.92])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4F2A1180D
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 14:19:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lHE2zFdjfKIplv4AHvuRkELcBHj818WXwyOnyTrMt5y2J3j4W2RselIN65EniOG9yFHx9towB7UVEuNiZrEw866Pgy+ENan7UlwtOEVrwXs6l7fc1119zdRB1zrHzzw9CjJIA5se2Qi1iVFDPION7sYKSVzsuYadmhxLcgiwUW0n/FQsibq7T0ZO04FErKz69id1nhNZyanUGv7myz7Ug7JwyBinoG2ehFPsLMNnRxgGry8c3sXu6CEW0uw1P4/VeJJj4BHtfD/XrjMUFfiITZYmFJjBrSt2hIqNp1FSNnUuexncgl8jikHHxCcMKQjHwlRcl/sahtLT+3T4SrfGwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VIxmKB0MS/XV5ZVjAbW5giIvybah8scewHHVmNNk81U=;
 b=MEj+lN0BUVpZREdXCgGMi3iC9mTmInj/owRiedwlffSc2KfZycEwEUxZtp+zeU1/We4cXiDV1xHcLuhGg0uRa9u+fE53JyPVRRavVg1ae72FotH2Cl4RnOnlZnKiVoW1uukzuY5/Spu1AFDlM05zw29jpJfwATaTc8i6yi7ptQq1q+B/YDChP4xNs9PUIAWqqEiBHuPrzmjvYQg4y8cWO5g5vpBgmgVMU+/43fpGyMz17XiFkJynwRmCYdvBeekyElgJ8mDSEAHDuTqn91iJb4N8X2ltm8IsnRefYs3uKyvcV8SUdOn6YTMa1FFKQDeslCQns+7VVmdpErQLDoyc2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nickgregory.me; dmarc=pass action=none
 header.from=nickgregory.me; dkim=pass header.d=nickgregory.me; arc=none
Received: from BYAPR10MB3653.namprd10.prod.outlook.com (2603:10b6:a03:11d::11)
 by MW4PR10MB6560.namprd10.prod.outlook.com (2603:10b6:303:226::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.9; Sat, 7 Jan
 2023 22:19:50 +0000
Received: from BYAPR10MB3653.namprd10.prod.outlook.com
 ([fe80::c382:5e06:e62a:9494]) by BYAPR10MB3653.namprd10.prod.outlook.com
 ([fe80::c382:5e06:e62a:9494%7]) with mapi id 15.20.5944.019; Sat, 7 Jan 2023
 22:19:49 +0000
From:   Nick Gregory <nick@nickgregory.me>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "ccross@google.com" <ccross@google.com>,
        "surenb@google.com" <surenb@google.com>,
        "keescook@chromium.org" <keescook@chromium.org>
Subject: [PATCH v2] prctl.2, proc.5: Document VMA naming
Thread-Topic: [PATCH v2] prctl.2, proc.5: Document VMA naming
Thread-Index: AQHZIuYogF8BwlW/wUeGZhh56C639Q==
Date:   Sat, 7 Jan 2023 22:19:49 +0000
Message-ID: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nickgregory.me;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR10MB3653:EE_|MW4PR10MB6560:EE_
x-ms-office365-filtering-correlation-id: 6ad54f3d-52b0-4855-ab7c-08daf0fd4aad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MxOCoXs6ABCYGQgPhgnwJMGN5Gf7rBJofr2ULxkcxlksgJvs6X9S0sCv6txC5pp4X6hPMPN9U1ImbrpH7lb8cQQSr60sRQTFJjBFwfTE4S6F7GqFT0UtAylZ7CW5q0VVSgNxkWVlEqf4eIx9HaPBsa2UDGx2Y8OD5/8n1m+FnbVF4d7hA+q5bGjeuL0Ml6M8hsnz6stfMJt5pkHrXlqTkQF1HItnliW6UgYaQz9uUrbnkXCDZaciOkzrYYmNXPiufjeog1xvGtFE+08gfpUBoVcNevEr7AxBimIRDixwHixlI5135BvCVPcYkusF8QmzKp+Z6zmu5e7sGSDuFQ6V8UqV7oSxMksYf15IGQU9q9NHypTSbjej69HKUntLB7o4NcRJaAITJGPQ/W5YzIPHPOGwr6lTV18FzgB+8nrRKDbuvf3866RCpoO+Fes6mDG118V4hZg7Z2DbcbjPfNFqHonqK4WUhyrXbYt+Zt8AWhlobVVwtitTAyJWfBP6y49zKGlUrG6EV6cM3xRsVLLr5pQoPR/sLD1G9Mz96eHVyLSx3h5BYAh4MvEGB5KRJUS7JGRZ+6sZjA0ATM8PxuKoL/Jy8U0sUHpW5fhOJG0wmIVM8iGxbZsOaGQvqvMhox9GzC5zfZwZVKK1qjg4dLFr1xXaLDRbhANaGdvMM8BTzYuMyJLddmq5vVilH8JRBDf7Izk/wFz/Sz+iObpRsV8cpI7RzqUlNucpi/oLDnHR7xUy1zBaQLzAlOCqWzn3U6Mb
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3653.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39830400003)(376002)(366004)(346002)(136003)(396003)(451199015)(8676002)(76116006)(4326008)(64756008)(66556008)(316002)(66946007)(66446008)(66476007)(91956017)(71200400001)(54906003)(110136005)(38070700005)(2906002)(5660300002)(36756003)(8936002)(41300700001)(86362001)(83380400001)(6506007)(478600001)(6486002)(966005)(33656002)(122000001)(2616005)(6512007)(186003)(38100700002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EEAC7E6kHBAwRikMYUuniuOCnkLzHPe219DVDqHVwLtaP42T60p5PYIJLxgx?=
 =?us-ascii?Q?HTRI5lI9gYHrqrYR+Lsd2aoFej4HQY63RYDFm45ENAfYcPGZDIduOFoQFjBj?=
 =?us-ascii?Q?+g55l6ZOCpkvEN02Xy5p8Abuvrzx5lP+iH+73NcWyATIqbnbNWAwhLxIPUez?=
 =?us-ascii?Q?+ZkBhhmu4wqUqOr8UsWp6GkTLDokY67JwchMMr6fb/ieMjFmBS20v9aV16nL?=
 =?us-ascii?Q?03SHxWYuppvh0wYipUjmXyvtLMqxRPhL0g8crpcQsoV5JiikbH+g/5inmjY1?=
 =?us-ascii?Q?4JRa6NqEBg4kL1oVGAt4bOIW+PWXxiWZtdxb/IKe6K+VSWPOYfSVlH4fPLfL?=
 =?us-ascii?Q?3NlFTMj8VvKgTHBwSDBX4TnS/Gecf2JIEODhUQuFmpnvC91cPu4NCWSXI5XU?=
 =?us-ascii?Q?C7TvDepkFdEq5XU4wOnMUD5vL1Fk9hlmQajrZYFHlIEWH7AIO4A66lQ0Nkoy?=
 =?us-ascii?Q?f3/AZd7zunDv3yqztAuuHoO4Hcw0U9M1RQjcLda1zWS3+qAPC8L7hhASCeOE?=
 =?us-ascii?Q?JaqJ5wN+537IJKwCdpm/dboc+UdQ0r1uOu9bbiIpzkc1M0jmXjKMEdyTyybT?=
 =?us-ascii?Q?IUHN+4IaXXWFpKxLkYf3jm9ddSY1bMNgmH9o5sidwMvKuVf+3QCdKZsm8PJt?=
 =?us-ascii?Q?q1YNa9hTdGSQRRHdPTLsYIGU0lT8y2SOAgN/o+NQqafynneBM3RNPprbJRFd?=
 =?us-ascii?Q?5diwvL2OKnjvo0iEktzK8Jj0h0AT5jA/EvutegsHzkqwoqshnxKMsWRyc+wM?=
 =?us-ascii?Q?02CPsizXLW19NXp4HxYyQizZafGdjdM9Q9pQc5LrbhlkPFKH0c/iZ2h7UXGF?=
 =?us-ascii?Q?vzLK6guR5Z9ivfz9J7G8P1E1EQKoiCV6g4H/OqwkmJYvCMchdKpzNLsKs7t6?=
 =?us-ascii?Q?KPNDylzDs45A2mJTvqPA6HafkLJF/NZUfylUsd3D4ItHQyvGD+Mw4CgGNl9V?=
 =?us-ascii?Q?iQgSXE0TGUlj57zxnfW+9Lwvo8/WvyLlpFTmiakETKG6GOF+adWX0Fku2UIa?=
 =?us-ascii?Q?qPcNlEPb1gljjavMim/AVI0wZ9BdI2KiLEB+UGjvU5IXHDkJlCq1MRxzyfhb?=
 =?us-ascii?Q?pvWTjicBfbIB+vesbRN331wOyDaKydVfoKkWxtLco67uelBHTyOfvYdygmO+?=
 =?us-ascii?Q?b4lbovmdAXmKEw+LDutnQ2+Mu3sLnwYBasObe9lkH+fINM6DF1UyIIUNebDu?=
 =?us-ascii?Q?+VJE7inhi5F5XgSczB73/28BFlG/frYOj14IW8qZZHvSiswG2yWK0aJKh/Wi?=
 =?us-ascii?Q?OBT9I/WN7GbnsTFGKbq6zuP8RuUpyHZ+vGi5n7GImI5dpAFgiChR/y1Cd6O6?=
 =?us-ascii?Q?yo+4Sk6bKbmgU/MsCWgF90qCDqaAMtiVovMvmfrd9Ksl+flaLytsaNxj9ifQ?=
 =?us-ascii?Q?YZJaWUt9bNH6yDIJ7R6SXwDVOKPMhgVtYmOXCsAaSv3owGNQv275rgpw3sTg?=
 =?us-ascii?Q?BSznPs9JplAhQ0k8fsOVtUpI//BTUAVIyl5iiSTy5VcT1UMYYv6yJEWfrAta?=
 =?us-ascii?Q?W9zjioKiGBNPe9tr+9yBB7iOfkIMpZKRJ10pnl37ZXh4MDt0zyASettCMqHr?=
 =?us-ascii?Q?sAnwYAl4tXMqa1tsFQc6m9DVCOz9aHgJkmvChxNhbCGh22FDL/suJQ+BaPDt?=
 =?us-ascii?Q?MEghx/L/YWSKfXEGfknNi4JdA5Wkx6Q09fhHjal6G9JZiyAaCzOXYn3IDWh3?=
 =?us-ascii?Q?cbw1Wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8ECDC52642B32F4A99387D96171C39B8@namprd10.prod.outlook.com>
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-OriginatorOrg: nickgregory.me
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3653.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ad54f3d-52b0-4855-ab7c-08daf0fd4aad
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2023 22:19:49.6321
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53402301-82a7-45d8-a44c-27dc38ab0f60
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PoCt9q+3+H+0tT6p7az35UOH8g9m9phLIz8mvqJL1Dgzlzrt1BPMxqB2jJ7PF3A7olx9X125S06zLP1dh7UOGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6560
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Bring in man page changes from the patch set by Colin Cross
<ccross@google.com> [0], and document the corresponding virtual names in
procfs.

Signed-off-by: Nick Gregory <nick@nickgregory.me>
Cc: Colin Cross <ccross@google.com>
Cc: Suren Baghdasaryan <surenb@google.com>
Cc: Kees Cook <keescook@chromium.org>

[0] https://lore.kernel.org/linux-mm/20211019215511.3771969-2-surenb@google.com/
---
 man2/prctl.2 | 34 ++++++++++++++++++++++++++++++++++
 man5/proc.5  | 14 ++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 74f86ff49..2c8d52ade 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -769,6 +769,40 @@ This feature is available only if the kernel is built with the
 .B CONFIG_CHECKPOINT_RESTORE
 option enabled.
 .RE
+.\" prctl PR_SET_VMA
+.TP
+.BR PR_SET_VMA " (since Linux 5.17)"
+.\" Commit 9a10064f5625d5572c3626c1516e0bebc6c9fe9b
+Sets an attribute specified in
+.I arg2
+for virtual memory areas starting from the address specified in
+.I arg3
+and spanning the size specified in
+.IR arg4 .
+.I arg5
+specifies the value of the attribute to be set.
+.IP
+Note that assigning an attribute to a virtual memory area
+might prevent it from being merged with adjacent virtual memory areas
+due to the difference in that attribute's value.
+.IP
+Currently,
+.I arg2
+must be one of:
+.RS
+.TP
+.B PR_SET_VMA_ANON_NAME
+Set a name for anonymous virtual memory areas.
+.I arg5
+should be a pointer to a null-terminated string containing the name.
+The name length including null byte cannot exceed 80 bytes.
+If
+.I arg5
+is NULL, the name of the appropriate anonymous virtual memory areas
+will be reset.
+The name can contain only printable ascii characters (including space),
+except \(aq[\(aq, \(aq]\(aq, \(aq\e\(aq, \(aq$\(aq, and \(aq\(ga\(aq.
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

