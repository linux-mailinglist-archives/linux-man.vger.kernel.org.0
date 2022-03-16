Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E9C4DB18E
	for <lists+linux-man@lfdr.de>; Wed, 16 Mar 2022 14:34:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240064AbiCPNfy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Mar 2022 09:35:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiCPNfx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Mar 2022 09:35:53 -0400
X-Greylist: delayed 1111 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 16 Mar 2022 06:34:37 PDT
Received: from hilltop.cent.gla.ac.uk (hilltop.cent.gla.ac.uk [130.209.16.103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F231D4705B
        for <linux-man@vger.kernel.org>; Wed, 16 Mar 2022 06:34:37 -0700 (PDT)
Received: from cas08.campus.gla.ac.uk ([130.209.14.165])
        by hilltop.cent.gla.ac.uk with esmtp (Exim 4.94.2)
        (envelope-from <John.W.Marshall@glasgow.ac.uk>)
        id 1nUTUT-001pC9-58
        for linux-man@vger.kernel.org; Wed, 16 Mar 2022 13:15:00 +0000
Received: from CMS09-01.campus.gla.ac.uk (172.20.14.45) by
 cas08.campus.gla.ac.uk (130.209.14.165) with Microsoft SMTP Server (TLS) id
 15.0.1497.32; Wed, 16 Mar 2022 13:14:59 +0000
Received: from cas07.campus.gla.ac.uk (130.209.14.164) by
 cms09-01.campus.gla.ac.uk (172.20.14.45) with Microsoft SMTP Server (TLS) id
 15.0.1497.32; Wed, 16 Mar 2022 13:14:59 +0000
Received: from GBR01-CWL-obe.outbound.protection.outlook.com (104.47.20.55) by
 cas07.campus.gla.ac.uk (130.209.14.166) with Microsoft SMTP Server (TLS) id
 15.0.1497.32 via Frontend Transport; Wed, 16 Mar 2022 13:14:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZBvj88iSNW8fc85yh6I5enex4pz2yM74s69zG5f5MukpUf09zXfefYMdKbkDAUL4Pj1wOxHqluwd8YVjyr1RDDlWbO29Ugb56LYqasiQBmM9CYb988yWDp87jSBMDQ8PGPTZU2I3pcDr35ZDuyi8XXNmNoliOGycIX3rGH+bQt7/60b0Bod697zprZvIZipLLvIxsXZ5/VmYrZD1izT/+WZwxhIFJH1cjBKW+H8ZqEpHogVq501LuARUwxpT3ajZJgYo8JUD2Di7htJhQUOIlk9AERvCNF6RUzzBLq/bKdEhkCzhHdiOj0PVU7coKpoCT+tOyidrqeBoeo6RHLYJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUKeWNrukfWA0w5SjkcQa47rutSbggUFe1XcnN8s70E=;
 b=MwbdhRpNHCyvQe5+8vQQ8Kjkgw8HnTmUdb7KellrJVIJDtdtvfooAtSY0Fw3rV3zSVLFc3aI/09/kHryJd6eu27U9x7h/N3RRjQF8QkSnMAbG9qb/8E7qRVnQ4ZV5NLFd0daGj5dRiDSbF6lHooDfC9TygXxWm1pyJer2OU7B2TuZweo3FOHMGgUVC5zP7BdWGCktnbrVTsanvof/Y28bcDLHlwSAfbvmgAnok7oax1to5Blky+O3eUOBpro+rNidq4tlrevfZHRuQiSEmC+h/AV0nt3XusIdiUB7uqp/0xCVo7sR3BYKb6Mw7ipwMPS0L/YTDuUsyfvDAKbI90F9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=glasgow.ac.uk; dmarc=pass action=none
 header.from=glasgow.ac.uk; dkim=pass header.d=glasgow.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gla.onmicrosoft.com;
 s=selector2-gla-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUKeWNrukfWA0w5SjkcQa47rutSbggUFe1XcnN8s70E=;
 b=RTY7cMzzy7gufP6EIYkUpRAaHD0zzp4AF+LeFxXpBE3vJrIDdu5W4embCAf1sHj6HA1ZJ3S8P5imjbSMljH8uu13+HeMHuCXrzrvIFuwM8LnVfio6n+FHKd9y9s0nqwXzFVuzcH/53w+XYMY+60JsXC+DQpAummgT1QNHkbq0Gs=
Received: from LO2P265MB2925.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:17e::8)
 by LO0P265MB5959.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:28b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.24; Wed, 16 Mar
 2022 13:14:59 +0000
Received: from LO2P265MB2925.GBRP265.PROD.OUTLOOK.COM
 ([fe80::74cf:95df:c59f:a7aa]) by LO2P265MB2925.GBRP265.PROD.OUTLOOK.COM
 ([fe80::74cf:95df:c59f:a7aa%7]) with mapi id 15.20.5081.015; Wed, 16 Mar 2022
 13:14:59 +0000
From:   John Marshall <John.W.Marshall@glasgow.ac.uk>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Man-pages Git repository
Thread-Topic: Man-pages Git repository
Thread-Index: AQHYOTfWmoNR7blfA0WdooY1rtqaIg==
Date:   Wed, 16 Mar 2022 13:14:58 +0000
Message-ID: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.21)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=glasgow.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f85dbcf0-7c47-4a1a-f62a-08da074ef8de
x-ms-traffictypediagnostic: LO0P265MB5959:EE_
x-microsoft-antispam-prvs: <LO0P265MB5959EA1581ABC6A606A63E5FF0119@LO0P265MB5959.GBRP265.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jrDVPIWZZPQGXoM0vIZr6dwXs7nHFw9tSFIlS91YB4ZzdSB7Jj9YB9tD3LIriwBXa1YEgROPGb3TQ21xolzZw+Xy7C1AyTqsVJ2PRmayi0L0k1R6Myj/e/pa2a7Df0Zcq22uoMG97WBZB/yHkLUPgjoD8WFOaICYmcQF0BXCV1nA7SS0+kMy9dv1dAn7vta6hiHflvQMl6HTxZ5bgsQZMMmM6MhcgpjqimbjT8fctJxa3wjcz7fXIq9Tfhc+Xm+4PcehPFyKYv2okxPJcnZ32wN0CAnrvIqTMgJDiucInnMlON72uh2IZqIDqAuyfiys9n9MQVGSO7iOkZPdMPdr29CZ7aXXbGn2aqG5XoGkPFx3EFIaSCgif0DG4mtY1rgyIQNxSBzcqCPNhOC8uoVDjbdJoj6IuTh2YK4o1U1TE3zJ82cqvX8czOwpYX1l1J1pp3mFG/6XM2QiXOlVMYX2lH9vx3s4moGIbS8OVL7LkMab2/L2Q0xKsu0/69WLn/mhQEu5L8Sa8jgGX5Iep/doEG7dmOaQarxmlFJjuH+UgurCc4WCpjCfaNW70Xro+oqE4Yws5i2mvhvDMFLIhnWDLOWvFepahSxdnNX2/HuaLHGA3O6gphB6dCq7OI4fgwXG/wvW7DYM7UJK6BS/g4ftO25XWxDg+T0DrGMlGTLHHdhB0iJ9Niu11XWACmveQlxAnRSB4MBkLM1mR40N5uslCncSN8WSrKlcHfoFqHK0JnhLX+Ovnn3+ZV5hbYIHKjCJcsQvW9a9hzCZWGtGTfZYAtEhWK495k6GxI0jzUZ6P2gHdryAocJSsRLEmRopUS15
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB2925.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(33656002)(6916009)(786003)(316002)(38070700005)(8676002)(8936002)(86362001)(5660300002)(4744005)(122000001)(76116006)(2906002)(64756008)(66446008)(66556008)(38100700002)(66946007)(66476007)(2616005)(36756003)(186003)(6512007)(6506007)(966005)(6486002)(71200400001)(26005)(508600001)(3480700007)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u+6KD95zBMLMWWVdNOXucThv/VPtcM+S6j6f3Pa9Sc6SFuShKOWovuiyULrd?=
 =?us-ascii?Q?++OhzpcJ8DqImv0Xxnml81w3yAG7qQRkXyT7+tW292CBU5J/9tAHQhKu/Wkr?=
 =?us-ascii?Q?1vwtm3CD617FfjVhLgLY5dtTGMD0whlUb5VP9xvkqpoBxhkd61XlCxAD0gMV?=
 =?us-ascii?Q?C4LiqZ8x9LHslilhV1uuX79R521yPm95SLUPJZn+OzBYxvBO0VCycHJRGYhW?=
 =?us-ascii?Q?XZ3OBuCf3GTQ877Ttunw61p3eX/atiZty0YSWt7XTJX+r30l49TyUdgkws4I?=
 =?us-ascii?Q?2r3ZoZpktJGnZtxLZXtn209K8whozrdtQy7ixLUGjaptEZYqqwfOrUSV2xhO?=
 =?us-ascii?Q?XFJIwvmxOuib7CP+uBwb1luMoeMTUiJnADI5tNcVchj8Vur+mDF2ZziGsrlH?=
 =?us-ascii?Q?IRwQklNKhCBu7KmVqS9Zz2Qu2RiFp+44xImZXTuU4cRKz++2SHgo6l8rCKL2?=
 =?us-ascii?Q?ycTYowMxdDMgJ+T/OgwCPM9hA785x6c08mMVLGNvwGxsTUoboJ29mYXLFXee?=
 =?us-ascii?Q?jL/rkxmbvGT3mNdkuSXLoCngcVag/PYI01YjyTyZ4Gs1n2OZKL9ee7YXEj7p?=
 =?us-ascii?Q?okml1yg8flJVO8pxut4quq5l+bdvX/HL5t8HJC2ILJ7aqd/SdujgPvp2h1RS?=
 =?us-ascii?Q?dNXWdkWN/kD/ATIvMDtjhOr5yzR4q7Ez3nHrwQRl52D4C1WX9rD0QPXlq9/J?=
 =?us-ascii?Q?xY8R3PFA0LquW1b8i9Vv6ZU+JDAYIBPkF0IeBeyLwBTmBUeuUElDU9KeLaPh?=
 =?us-ascii?Q?Y9DVxDa00OS7Kg6QfCiFR4KkMWsGG02qWlKacku84lOuZxZt0CP3z5ulqqyE?=
 =?us-ascii?Q?Jf++bezzBQ1VcYL0kzWq3l38IlQKt69Bu9iaHU4L5o6KO/LfIdX3zPa50L7P?=
 =?us-ascii?Q?K1X4IQkjW+vkzPI1OVSaHmOKVq7r2UATmRnbaQYwrDxss67eyZdQbeVQ9cmn?=
 =?us-ascii?Q?qfw0abadojKto27WIMKSqipkeKdKcLytok5jAhUPafe7YjMQ2YVsOkXJ7Zmb?=
 =?us-ascii?Q?9Zry8edG3fpWOJkZwDb6nyQGxt0EEeBMkf6aS7TINTk/cWe1pKfFiWH6lOAN?=
 =?us-ascii?Q?whIsijm5c1TerlPF7Tp+K1xojdq33mKqWUESrACSECNh+gqG9O/4H7yomP/Z?=
 =?us-ascii?Q?amtrzmjAMHghs7l65eY4RaSNAOBkm5os1PH0LxuSmQK7lJIORguPdt+BG7nP?=
 =?us-ascii?Q?cuG37Qp3lwSia74pSBYlZEOFtXXwDT+HVAsHy7G45sPzNuw7l1szUzh5I9FF?=
 =?us-ascii?Q?j2NytJ30OqOYE4GYXlojFI1Pso4pdT/3MO5aLZt/qxiJApkrkfRFE95fakw/?=
 =?us-ascii?Q?/oLNv3F+hAx5hEsHhzfZsc94yGIS4+S9/uwsWGu5UVzCidDZMQmwkcIfMzgP?=
 =?us-ascii?Q?oceNL5DaxdUpjyjZaMez/5sXemfxsdvfVYB831rDYVdCU1pJkBGq6gbcuL4m?=
 =?us-ascii?Q?xtrD3uaqLH8wS2KUukVn4j5arV+UUhv8+d3ackLbtJ4DD2vQjRrhzQ77uXrB?=
 =?us-ascii?Q?SvVfZ9VqyyqQstk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D34F0DF929F6C146844B4CEC891BE04D@GBRP265.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB2925.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f85dbcf0-7c47-4a1a-f62a-08da074ef8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2022 13:14:58.9301
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e725c29-763a-4f50-81f2-2e254f0133c8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XXCcUW8DtfhzprqrCWZxhEl6VbrLIuAlaNyhnNJ1H3TkBAIT10LwqeSPfAKgC6rnrNMIg2qcCGmpzlhCxRaTiIn0Rifl2uGxJj5vnCfUnt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB5959
X-OriginatorOrg: glasgow.ac.uk
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

At https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/ it appears =
that no new commits have been pushed since early September 2021. However he=
re in the linux-man mailing list archives, it appears that changes are cont=
inuing to be applied as usual.

I didn't find anything in the mailing list archives discussing this or ment=
ioning a change in repository location. Is there something I'm missing abou=
t where to find an up-to-date Git repository for the Linux man pages?

Thanks,

    John=
