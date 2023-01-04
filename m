Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A9265D880
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 17:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239796AbjADQPk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 11:15:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239901AbjADQPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 11:15:23 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2077.outbound.protection.outlook.com [40.107.8.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84D13FA3A
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 08:14:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvWVtdkqkQ6s1rTLD/DpEHzEt9gwTidp8BUD1ZWihKS0jw0182CHZ/erZVoS9kYok7hXM/4CMxPEBTRM5Y7dhPoHvnlQ2w+AGJTbrCl92RgkOFq9DrFKXD65SvtJiMvR23oAUx1E38yQ17RVch8UQ8gWs89mO2fV+qFK5ic7eUGNJWc4mNPp1MPQYfwWKVa/G/LlckSw0K+BKihZE7uG/wAH95+yq8a96++Ajm34RFm/fHUIK/gVXkoux/nvg837Qewl1V2DrRNnHIdETL3Se4xzQe5aRWs4k0YOpGD9lIDOY4yBgFsxyh/Ajd7lZW8rv6ez8T6eFie6kYa5nwAjqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SuGtvNWqcRATCJcCKgXS6eqsFpGZ2mrNIjhEAzeHY0U=;
 b=RN1hJC5iGO32bQGWTRNe9+hUWoX99Du4rIagIOwh+fuDK/WdraE06hDgOktCnjBeJWq0bRWP0Cki8TdBVmO8oGcENkt4el49cXmZfWrvZkdoDeY2oHyRRE3BrQZ7x/zyskXXwqjiBW+PgXO34Hxn8ts7MIi8SWn3rQLGddsTyFTKhuFJVKscXPBfjrZ1oJyg29UjtForQomwQsoijSO/I93l3mQkLF/XedZZ9MLgObfXFC74SghRL9OB+jC4adgjYGK0Yu2rC59fJY96BiTap3JG69YyZcqO0TjWN7tFA9ZTtafFMz1LWdWnLfa8Vg2vX4WWAUIG+wpohWgfy3Q8Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuGtvNWqcRATCJcCKgXS6eqsFpGZ2mrNIjhEAzeHY0U=;
 b=M8rKRPtDwYAUB9GoTRizLZS5brzkZrsmqW7f09nYzoNW94YGKipbPA9N7KR7kNTOWvgx24C98laXYfzXOVCsvJkdp5mk3AoJv/HeeHrzeQRQR8iuF0TuzUs+j1U5Dc4WXljRFlnER07m9U0N03YyVHBY3wSZYykaNuC9CFqMDaFmcNLtQSIHscxhKyjGKCXwgVmJbM1/XS55wkmPXSVeev7CV5Cy68SAzwMu1nSyiMx6t76+IexPGzagGevQEltsEKIgUpb/PlSt0IoMKvtQD3A4r+FQaKSJJFSHRajrohHDd3ttVT1CUzz6Aw3Y7Od7Yi/PqnZ0WtvDj7TiaW6iGQ==
Received: from GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:76::8)
 by AS8PR10MB7826.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:62a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 16:14:38 +0000
Received: from GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c0e0:8597:b556:b81]) by GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c0e0:8597:b556:b81%6]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 16:14:38 +0000
From:   "Schwarz, Konrad" <konrad.schwarz@siemens.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Error in signal(7)
Thread-Topic: Error in signal(7)
Thread-Index: AdkgVVsanYwUSkZoS0Wr6U65h19YuQ==
Date:   Wed, 4 Jan 2023 16:14:38 +0000
Message-ID: <GV2PR10MB62098A4D13A790B5E039614D8AF59@GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV2PR10MB6209:EE_|AS8PR10MB7826:EE_
x-ms-office365-filtering-correlation-id: 7c53490d-850a-4b03-cc5e-08daee6ec72a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HZ7PhLQTxgudsiyTqt61T5PhLXfLuWHRp378WT9tf8vSCErKDyR1L7ojX1x4uI25Jepb3lgHogSB2TiYWd3VhCfVTzLnfMnubFCqeJm5wfPGAA6gLRRfiE08sgqvkccUbJ5LDW47oIfGYJUEASc04qnR1KDZK52t2EvdpKbX36gxoKzvJFE907VByp1FW528QgpcuK/MXf0BMzII7KyoS00QJezkmK87SM/KIN1WBrEVymq+W9rWhGo7tui9feYJlCsMwnm72Bbz4DPak/ULOFNwZpdQgPES8uYyv72MonLsyZ4l0FHtFCJDVI7F8Zkx3dZAT4FIzr4mSwbPmQuxvN0H4hWC40l5hxepI/l3NpV/Td4iAMErJmxklTix1sLWU8dJPDgV/wW6VO/uRq2UzTh3pqV7jtNkJhmWZ3mu4/ocfpnGZVg1fdsVkcy02PtzB3AKqucyYnMr3o6Pgb254iasNcmk4urUUPoB/ilYOgxCUxpdB1/MweMXKAvAgDrMJHiQ+6Q/igf7mba5i1oZQUxbBvwJpyWgfVKCM7ChfGPEIcKGYf2TxMZdo71gp5l6pBzPCjCAE8LkuW+w2hHXgFj6GtnEyO/Bv/18YL4G2QxljydTroFIvGEy3fpiVokg3a+7t+8aQl9dk/fjMSI/O7Lgut9iKn975wo+KFwb4WCMnsEpqVuLW1rwVmKoFvw3jDjTNq0dvrnHy/WROjM01g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199015)(38070700005)(122000001)(55016003)(38100700002)(82960400001)(558084003)(33656002)(86362001)(6506007)(7696005)(66446008)(66476007)(9686003)(478600001)(66556008)(76116006)(26005)(71200400001)(186003)(6916009)(64756008)(8676002)(66946007)(2906002)(316002)(52536014)(8936002)(4326008)(41300700001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JMd2VeSKWYZZ9+1fdh+DpKE5HCLq7avhdwZ9YWLclFs/Kr0tCwvMv1oHF0Q9?=
 =?us-ascii?Q?hIWAJValIlIg7rpfMPzxu7r0Ue+x/SsM0v+5joED/sQZYbgxwhNB36RK/983?=
 =?us-ascii?Q?hx/m2KR435uSTCyaxngFSBIAiowq2fFJjfqo9Xk5hcJcMVJDi4lQb1qPotW3?=
 =?us-ascii?Q?bxYgR0QDINBC0awQEh4l2qY70OdS0RgZl/pt/gHl7sufTRdX7BEN1oeRfcgf?=
 =?us-ascii?Q?VTtIxm0PnDJ8wBwToSEYc38a4UAMXVOvPhgFQuE/fQpNAWRtcMH0FA2yWOFZ?=
 =?us-ascii?Q?y22VqE8iFGPlmHdKVTUJzWGP8uOOBBc+CJHm/oxJYTTi7Pm/m39lt/c4dGil?=
 =?us-ascii?Q?ByTtnobJBhFe5wrpVwVD2PNJskQ1IBJijESMoDdMFW/5p6BIRgKsKQRJaoda?=
 =?us-ascii?Q?M9R4M9EvL/MgIfQisSx4QUra6fmLpizjxV+cXrJp/xroR7hyHwZTcgPwcu5G?=
 =?us-ascii?Q?5U69OYkuRfsd8EuS5jXRqetlTqVkwzFXCgQ2HVTbc63A90d1NvZAU5o9l89W?=
 =?us-ascii?Q?TAU/tHd/8KfR2ZDnyDGNwXNfcErvwK/j2fiszyTJaTc93FJnW2rK1CTcl9Wo?=
 =?us-ascii?Q?kzKuuTVdVycpbA0JKzTbXXYcXPopEm58JDHuiEWydWsQW5/I0bcDsNizqHOL?=
 =?us-ascii?Q?Su1V8jZMRygWSrvEloJJLGrJBeClV3JaR1Uc4dH9oLHySLhbhs7OV9wLHuLu?=
 =?us-ascii?Q?MC0Hw21IsTf238TTJIFpUwWzMbnfUq2kz+E3s6wrf+HE9rqibSN8o2sNP+hx?=
 =?us-ascii?Q?by+VsnlAvV5raavDetPeIvAbYP4DNEDvh9k2gSJ2/1A+FzSfk/eUfCugPKrk?=
 =?us-ascii?Q?tcGQaxEkbwIM63NrJiRx6twSX3+BpJIdd2uf3Yj/ACT4j1wAc9xPuVhN3AnW?=
 =?us-ascii?Q?6d/NqySnUhTS8oZq30qJi01dM7l+1W7UQsrhhbYZmMbxP16imE1qax2BZwXX?=
 =?us-ascii?Q?gNgCAdm0oSuH18VKcid0eRv9fHqmBmofJ037jZXspoUb7t9o+Ze6GNPPqY52?=
 =?us-ascii?Q?cUDWPzsn8CkNrZgBMKo31JUaWubwMQzCUBcMcS+mh/sXIYSHAt7jHt+7W7W5?=
 =?us-ascii?Q?nWsnINF0OlL6W+x3I6eJiVXB28q/gYZ7frRo/YtK8R4+Pth99KNlAvXu/UIz?=
 =?us-ascii?Q?hEepgAz/BzKrFgRw8Tdq7Q9O34bOEnOJ83kIe94p8c4+HvL7wLVTcuO2LCyZ?=
 =?us-ascii?Q?lVYBYFhKB7HynRoU6C596mtGxpfPErQotiHMXQO+X+NVm3CkUPkvN0N8twfL?=
 =?us-ascii?Q?u6OkI4w9lrXzaAct98BsiIbUoi85dpTLzC7+eCqKWw+/VRzpsqaZz3voddEF?=
 =?us-ascii?Q?/J2VCfHVH+T/mBUdm+3QudVPV7Khxq8o90BHQ/fsCugvXBht0oPV0O88gU6P?=
 =?us-ascii?Q?KjvkMsdD96NSir0bHPh8uWmSt03dLeaT14SxYdMaOv0ypGh+23h3HTQU0ayB?=
 =?us-ascii?Q?a83FPZJq15nnlENPereoHxU2H0cEGwdg8+hbKCT8PxoR74i4pg14fFLP00J1?=
 =?us-ascii?Q?YXH5rFU9k9zHfNkqGw1JvYMgBZaEb6Iq7inyM1Hsj7kVpmUZaLslj1uPWAwS?=
 =?us-ascii?Q?nuSz0LVPpOh/c8vVwUDfcVXTnQQjo615FRB20ykqyl2sop+s5S/4xJofxWij?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV2PR10MB6209.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c53490d-850a-4b03-cc5e-08daee6ec72a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 16:14:38.1318
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bbOyuL59EOGJDegcZGfXCxjzyFtRwyfH/utwHLEfPQFDoNPGvVySJ0bhHOqfEnBzZ6L0StdcD8ijhwq4YDa6V/EbLCUICDyjIsOrkBxMfW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7826
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Execution of signal handlers

> 1. d) Any signals specified in act->sa_mask when registering the
>             handler with sigprocmask(2) are added to the thread's
>             signal mask.

s/sigprocmask/sigaction/
