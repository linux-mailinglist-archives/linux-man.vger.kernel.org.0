Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 298D568D06A
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 08:17:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjBGHRL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 02:17:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbjBGHRK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 02:17:10 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05olkn2068.outbound.protection.outlook.com [40.92.91.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B4821E9CF
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 23:17:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQDQT3Hrj8nINRZ9bYXR5nd+YxSx2TD5gY2Xdr7C2fp4/oU26bqOp1kNmrcgopu7uJfxuqln8M6EpoPfZ3560AaRXs0Iqs4434OegScXwoawZlJf7W4yJz4ssrQTcGhqBU7tXpaJBhttZarNJY+WUQe7BnVl8szBNXga0DXPjX9yBS5ioi23aAtaVPvYGI8w+Omwrvxwx8oSFKZWvGsvUI3VIkJkygeeJ1Nc1vS5dxVf4EEoemmn9lpp+3u6UDAfApU4S6+CnU4G1H5GpREn5zvcjp2ADDj9l18VoYrZID+1jfP/BswylHKP2SE4yUV/U9IxNhCKy8MTupoPamQr7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=optZacN7MT+Gujnn/ypf2Qo+SOoICNoif5oGrE7Cxoc=;
 b=efPglFbjoXQ81fHLOz1TyGlcMxRenqHUHggyTRsWqoFEhWoAQeFrqcxyXJy530hOqvU3PVx9irghHzGcXI3LiHFojFjtFJCXX9bAUrlSQHDwJJkLNovE+5/7GAWsf7XrUzeN+hCaK7z7OXcMFpTPlczOmZQBCZa0oNn3iQuk6+wZ207mf0oi8r2kkYP6wvBMAVMGKkUpFTnDaU955FVu+S7WB8GyIqDLfqyygewAt1Gl8PTMX5MaPjYU15e5O2MkrK99Hy+GeB0dAVHYsR6h0gVxOxqGgOVJ+b0EgUbn31YEtijylGK2O1vLle1v/b9euNxwrI5aT6pjmiBe7o8sag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=optZacN7MT+Gujnn/ypf2Qo+SOoICNoif5oGrE7Cxoc=;
 b=Rujcp2Qp2gX4mSyR7KOePBLF/VO3bumcwqvpmThnC8JD4aE/VQ9IHTb7Mz37lBd1gtlC+KzHYsvkoEa9PiDRo4cp+JLp/bWkVNg2YlGkEeF3u6nO3T/pEctAYLmbZ3eH8E64vuY6bh1B5NEUBqULy92VAcJCjGhGrjWIHuJ8K/gFzA0Hszp9ItRt5xlB56b53qOJRuIYMEDH2oXSZQI3/U3A69F3jwxkERzd4bSHYeiBJT7LcT7vly2w7V/hlbHq7D4P1mf6tv11/KSEBucEh3ZVlW+GXj8tKG0Cn+jZLurDh9zT5PMuX4p/MlJmUbpyms9aXXmwT/KLC6zL7uLVMw==
Received: from GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:93::14)
 by AM8PR10MB4035.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.35; Tue, 7 Feb
 2023 07:17:07 +0000
Received: from GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::dfc4:7a9e:a367:1cdd]) by GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::dfc4:7a9e:a367:1cdd%9]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 07:17:07 +0000
Message-ID: <GV1PR10MB6241C10CBC1414734F920FBAA3DB9@GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM>
Subject: man kcompactd missing
From:   ijaaskelainen@outlook.com
To:     linux-man@vger.kernel.org
Date:   Tue, 07 Feb 2023 09:17:04 +0200
Content-Type: text/plain
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
Content-Transfer-Encoding: quoted-printable
X-TMN:  [y+Z9IAojsCawvE35Or2fo/ubLId7lR5DriGWX3Mv6KLmtAmmOgdcl8cMH1mk5m14]
X-ClientProxiedBy: SV0P279CA0054.NORP279.PROD.OUTLOOK.COM
 (2603:10a6:f10:13::23) To GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:150:93::14)
X-Microsoft-Original-Message-ID: <91932bbe0cca678c3adc02c69e533ee60fefc60a.camel@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV1PR10MB6241:EE_|AM8PR10MB4035:EE_
X-MS-Office365-Filtering-Correlation-Id: c886efc7-09d6-4ee8-0e03-08db08db5201
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ep18SQx5IpkN4WFcf1esrBritTHRWxL+abg8SxZDfIFzaJ5rL9GGmxXZU1vYnxNMqcZdPA64TBVT5fsbXrzYyZI54C0O1+iNo/0ARZFF5qtdc/oUdcZX1TXgyhDV/teE02F0kGV8qa16xZRuohSsUZL87gtziag4E/7E+soG2w9cpFXWoPaF/iMcR6klBBwwmXECPTFa8//quEmKCUl/NOmnn4UGJ2jyvFtCwdagpjiksTXKiMS0+S/hOaLDgWLWQW5IXnIfEU2+IGYWRRemq11S2la7ObCRTOZtE3rlByDxOSZ6t8KOdfVXoOerhl28Mg+qUFvHT375S6SlAtKEg3+Sqqx7cbxrwM7k0NQ9KMefrjLI0xxH5O8YEZKHhtbPFB/G8mSYVLq1Hx1SQX7USTlazGRj9MvBrEa1raPHCPlX7rq8kZhd8wuy7pd9P3DnYs3+kXiXn9BmB5eJ6Gctyytf2whmKOUCrB1yWBsognLuSKE38YvZmzf6rvQjPM0EOeb0lzrr/rAtnv51gOjUaytwGV/xN3HsSrz8Ig4Bk2tJvxFSgIEqhDaNssOWxKCnBySQTVzuRaiJVUrwDxkqfQ1Uai5ZdDnK7TMbmWUxEXE=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8e2nXxjTCb1zNXzLz5+yH6fSXpU1g3U7JnuLJsRxpW0buw86bzhuQW0ZPFhE?=
 =?us-ascii?Q?spOl3E4GZaybdQWYOkaon6P2tkHUnw16RzdJBoApcH5uy5iKEFZiSuh/SpSq?=
 =?us-ascii?Q?evU/UWWwqyLTEvoFZYCmauC3tE53vLG6APrg88jvJZP+3+SpIONDRp7ERHRA?=
 =?us-ascii?Q?+v/kZTpwItjnPct6lYp5+yNELDvRtv/l3rWJl+F6cIwvZNWTdR2sixlJqM/z?=
 =?us-ascii?Q?2eVvn8TjsPR3CkLlYSdF/1vJq6zpOEzASK95UFkK0zBxgQMTKDdsiCAFaYGy?=
 =?us-ascii?Q?iqwBFsnuDnJAvO9mVbUkJ/d43JxMeeQWtmraIawUG5n5IA6SMvJcmZjp/eZT?=
 =?us-ascii?Q?pO+2+z80Pee4/cX7nGpe0zPVjRXsBsMglBSirUz1fJ9J+cCNIg7+olaS0iRW?=
 =?us-ascii?Q?ddlpX/LBmedsi4SlC8Sm3rhpcE5nst0NsuddfjZ8P8cBs9eUbNWIubEEjjj4?=
 =?us-ascii?Q?UpPddx8VVgvzwiAYAcuDIR7kYNJrAOtlVAr+fhNq3oO2Usxj7K9jICLi8+hm?=
 =?us-ascii?Q?PwnuO8fewgs+mwXtGasqX+k7BOFFHHBL4splrk61+Bieo/PrdRee8Q+VZHIG?=
 =?us-ascii?Q?wFQY/wm9l1cS2wuHsysXzZ+i7Tl/8JmQYRL9FRYX5pVaaUoUW9FbVg6E7i8U?=
 =?us-ascii?Q?cGgj6blU0naCMrnL0y24EGQ0CYi173mb0UQfiX4Xij9xRNYyWp7QJgIlWAEG?=
 =?us-ascii?Q?a1bEUBlJpM9yDDsHhrRg6Zs4TqEIU9ETNUcsWj/8O81rQankGGeAV89pTcku?=
 =?us-ascii?Q?88BtaysUM4IJYzS9E5+xKG1Kl0Mra2rjjnr00NEFrVQdF2WGbCRapZpcHf0u?=
 =?us-ascii?Q?EFzbo38UW4t9AyhxIaR1ooL9mWUfRV07c59llZKfjw/7PWYVIYHbFyUBv/fa?=
 =?us-ascii?Q?2YpIF7hxTYr5qsLH3Oi5QB7IYmVKmhIIy2PJ5I04yWAT7MsbwSav4MJ5lAiv?=
 =?us-ascii?Q?1d7B6AHW54VGec0IZ4euwOZGY2uftOWKMwMPpJ/+CzFcie8HjFKD6RUIDfnA?=
 =?us-ascii?Q?s5HKDEqLU9gPDoNVoWzfD3X00XcsBRl14z4uHsfVzy3OrHUQr69icaSm0L8c?=
 =?us-ascii?Q?Qr+6K2kNPPLuuNCf429M2IpH0NOrt8k3FCfFOI62geKtAS13JWzX1n2t3dAs?=
 =?us-ascii?Q?Yf/aHQ4/iCwX/p07or6ALyZRlKPoY4fw6TThydk+Y1STUcx6ikW6tVWeCB5D?=
 =?us-ascii?Q?reWJz0SmdWH0P/Q6Auvtvs8LGqtsxffGEDYxDGogTXzNj4LLV+Gpd+rDq834?=
 =?us-ascii?Q?q11YBdQfx0EgRedVgMDXHKHT38iHDiFXnNKAFRDmCgCGqokdm1DF1+BI8W1f?=
 =?us-ascii?Q?vvMAMhQxnVuQXWg47oITilM+mVgMv6uXydSuyB2t6mnffg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c886efc7-09d6-4ee8-0e03-08db08db5201
X-MS-Exchange-CrossTenant-AuthSource: GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 07:17:07.5185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4035
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Can you implement it?

