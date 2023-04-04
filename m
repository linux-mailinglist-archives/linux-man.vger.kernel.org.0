Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 090E16D6826
	for <lists+linux-man@lfdr.de>; Tue,  4 Apr 2023 18:01:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235348AbjDDQBj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 12:01:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235408AbjDDQBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 12:01:32 -0400
Received: from DM4PR02CU002-vft-obe.outbound.protection.outlook.com (mail-centralusazon11013002.outbound.protection.outlook.com [52.101.64.2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFEEF44AE
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 09:01:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffGj4qzPAdikxhABeKuYjICAFdzIEigeQkWfuhqb3EPnUuG56YWnuvCYQUvGE6TX/AKnNQFORsDLBF/UOQpQ90r5IRgUeNQ4cbgMGVoprlSHVP6Gnta1TZ+2U3Y9RGzBrH2FwOZGZtup5JxpYb/ZnXX5YIhErHaFA2Q5et4iBiKwHuIE5jVHdw0FUs5M8qNaids6ed1JAX3iauLeHqV3toisCGBtZGa0zo5MeEC4b581sHIejBxHVpeX3f8ZrSbTFF9f7jFp4em7fNnZdg7qCdwHdLLHWYa3Qty+TLgdtxFjIe3pcvmN/D2+3AfRE3tDXbzNZjvMZRrBjZgYqy0AGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+nEtTJD+e1Mtln90vbKovu/vGwP3LAsCc/Q8sDUAz8=;
 b=XCofeGV9Jr/rk2YmZZEdpxhxvFuX0RZib9K8q4wzqFIWGl8RAEed2+bZ0y8IHvYeaWapv36vieXQbqhfCfylv1P3puUY+KUkql0fTdIdFX0gNHRMKEPVsToZaAVpdaCc9BqqbOyLcDrxz+IlcLMXU6Ywd+zbRJAXj0vP0zSx2ULbsuL4dPA2mlY5bYoXLrm/8MqfzZw1JkAu8JKjVHZ2QYWs7A9kFubfK5hBCm6n8LEgYRdTq0cYXR7fl6WF1u96/sRx4KLUUUZfpF2/n8PL9tNo/6s6iHLuVSddbEJibUqk5PQ82b27ZZjIYS/sN1U0IeDbfM8/6tHC7Nixxbb1bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0+nEtTJD+e1Mtln90vbKovu/vGwP3LAsCc/Q8sDUAz8=;
 b=DuCI1aqSUT/7T/U0PcY9YNsZxDcY2vOYLnJ4CQrqPNomjdKCiHrk33sRZQ8+xaogW/b9zJzMpNUp7MKSBUFSvlbzzKIvOk5oz18Pam8xEw6kQa/KHFFigsVJf4ue7VB5TdcN/osvwoec8GOTjr7T8quWBq/T9b8xxjvhsOO6bm0=
Received: from BY3PR05MB8531.namprd05.prod.outlook.com (2603:10b6:a03:3ce::6)
 by DM6PR05MB4492.namprd05.prod.outlook.com (2603:10b6:5:99::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 16:01:28 +0000
Received: from BY3PR05MB8531.namprd05.prod.outlook.com
 ([fe80::e9bd:ef2f:b71:8084]) by BY3PR05MB8531.namprd05.prod.outlook.com
 ([fe80::e9bd:ef2f:b71:8084%9]) with mapi id 15.20.6254.037; Tue, 4 Apr 2023
 16:01:27 +0000
From:   Nadav Amit <namit@vmware.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Thread-Topic: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Thread-Index: AQHYMlPj1HJ3hlhQs0qxJTnjJp7Mnay+1+0Agld4AQCAB2jJAA==
Date:   Tue, 4 Apr 2023 16:01:27 +0000
Message-ID: <644B7C32-221D-43B5-B9DC-31F9E53143E9@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
 <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
In-Reply-To: <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR05MB8531:EE_|DM6PR05MB4492:EE_
x-ms-office365-filtering-correlation-id: b5bc2360-867e-4daf-eb20-08db3525d8ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BrNh/+tjGdUJz7W4SFNrsFfYJK9zK5gi9NhrQ/w3A038nF5fhnEFKtH+Gm+MVajsPMhZdBHI2KKSq571Xo6DvkDJ74vLHxUI+NFgvvKlANt+AJMLdzqKSyqligdganJaC61qMftpWt+WlA9sV2Lb1fctNWszDaGCq0/98j6R3pdbA5UM5nK4rDCRWAdycyZZ6cIPrLECai8p3/V/zc8OBH5HKosjgelSnJLv7v+XiYVkzwtK2wafxVOlDX9Iu9iPLaXxduMD4pNIo2YT5WAliATNhQV6tDhkicMSm40clLur0ipJRyj8Z+6em8m868NWpuAqizd6GEuSxh7FIXax/FN2GS+Kci+7eKt2UpNccHtNvuxB/qKAl5sEtScwkmwVEU5o/QHo8qJXHkXXbEdCe3NVMhBKK2DH0SH7YtlmFEE5YQFr4Df9yURrVipuDT3yBHu+0L85iiYZYWRWo/TinxTyhnlnKjck4pNpbcy6dzw24fh5BCSx6zx53NyjKwsp6gRuRiQY0Tu2nHVRqhAAsWOGww6wpHl7dUuFGvs3Fv77aYDAQRf/q0SHVsXm6r5RdIWRjFEm9j0s3uRFPar0xN0BFIuLhVtc2zl1X/mr05IEHvdJieEBa9xVmo5TXE0msX5bZ2/7AyDtiySPi8TjHQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR05MB8531.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(451199021)(6916009)(41300700001)(66476007)(66446008)(64756008)(66556008)(66946007)(76116006)(8676002)(316002)(478600001)(4326008)(4744005)(8936002)(122000001)(5660300002)(38100700002)(54906003)(186003)(83380400001)(2616005)(6486002)(71200400001)(6506007)(6512007)(53546011)(26005)(38070700005)(36756003)(33656002)(2906002)(86362001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JAfeEMkxTwsLiGg8OJNndNUB+4W/19UXdcOae4FoPk08VpahKEZgSwJXYDgu?=
 =?us-ascii?Q?qAnx5ZVAn/CYihhhuwca8dSi50PZxHBOBbW1BFqu3cGc6tRb/wL2nU8K4MQG?=
 =?us-ascii?Q?8Do80Zm/toI9pMsUMNBGKmj7f/VpbX1ekiVZYZEmU98UssvByDDCqcKi1wJc?=
 =?us-ascii?Q?hcJSnfa+N7U2COCeU4rksIUk/+8wPFLJUz8OmzglCZu1m/QIT+50u/2zgfNy?=
 =?us-ascii?Q?6hJmUY6IV8arkV1OTEz9w4RqELmpE0W+lNWSr/QAa8+d0CAR26Nj+9T+a4+h?=
 =?us-ascii?Q?1z8Gx6xt9ICLn6brYf1tlG8P6I6ZPxMpaVvwo/5OU4mUXc034L61rRcVmGup?=
 =?us-ascii?Q?zzHi9uUqCejLLCXDxL6ipp1/lYz+SOfayPp6y8GxtDWXnSE0+N/yY/C7Eo3R?=
 =?us-ascii?Q?SCOSdkpe+kW62/4q1KbbzFRYkNRdJky2s99MNu555nHV639O6F6Kr6dApJWM?=
 =?us-ascii?Q?GDLsjH8C5Tb+WPdrF803BItX9ZLKhew75SiBuegVhabUQem53DwVlG5+EieJ?=
 =?us-ascii?Q?W5ldF/04jqMMPKOHGYLIDTTugfvKMFReuzpdsENoZlDEmVgI8HyWy3WczVwQ?=
 =?us-ascii?Q?tHvzjHa92GxiSma3jO+6fLhT6BMKpeEsDbpCaH/ybp25f4GQmB8gCJsRCHal?=
 =?us-ascii?Q?b6dxp+zhrb6+BuDJHgHuEQ9TpI0O6Lro9prfJnuAcgT+afhHf/H84YaGW80M?=
 =?us-ascii?Q?R2Afp6m+hC/8YHjNHyqa2tCb5mOcM6CFsgiPWwtgOEfqVD6ElBD/F9i8VbZT?=
 =?us-ascii?Q?JfJbrv3DM2JTgjCrfg1zYRsURCl0p1bgIGe0cX7l5yPDbMMRdw5daeF8cL59?=
 =?us-ascii?Q?SDxQZDh6tnostUekzIYxsK3LVy3o+Ltasd6NsbKGYgV+owSk65UnT0AK60GG?=
 =?us-ascii?Q?+lzZCa2m+DFPgpb2TzP0Qr5F5lL53tjZqbvLxZBNu0liXmqHgSld2B79gcft?=
 =?us-ascii?Q?wvQsqQvnzNg4kQZTaQDYyYFF8o3VmxJHxAJDfXmGUnqap4lc2RcXYYRQbS6Y?=
 =?us-ascii?Q?6MLf9C2LAQySLencz7sIaN+v3tnYa+l3PZvc9BYgz1usa8jxPO+KCogClTP2?=
 =?us-ascii?Q?WrJUZR3Ott82Un84l/6CzKjTvZ9N8ocQ7dCJJcIE4lhx9oX730SHeXg9oMi0?=
 =?us-ascii?Q?CKEcys+2KC07RDfXnKpqS0N7RnRXEGgtAG1M7EtNMNetx+nMZgC9KnoPC6lc?=
 =?us-ascii?Q?M1P7zrjndpdMh2m1mEU+ojtxCwAYX/ME/Vs6eqDSPYFoH6ejf60sPiMH1EAn?=
 =?us-ascii?Q?AkujpcFcTbOImUFF2N7cpyOnh53hI90E1CyI5+S38Bxd2tNalidwN/fUOdD5?=
 =?us-ascii?Q?19slFI0gvqNu61/Rk1DSumXAAup82v/zPFSZJFjUAfkAGRpoaiu6KJRTlLgP?=
 =?us-ascii?Q?Pino0Okbf+PqncMsCczMPsu9SB5awE5AGei90Vd6Bxq5JbanDnVJHnl+Pvc/?=
 =?us-ascii?Q?YjnQygG3oq2vKrOqmSSWfbYSt0uQWbMEgkNKQDL62igr0Y5I4WdycL6rJyTG?=
 =?us-ascii?Q?xnwxvRQ5n2I0oAoqBrKnGA+EnDls/k54qwzhGgZycnNAHxc1AAX8+cpCIQhu?=
 =?us-ascii?Q?BvLmNHHp0ROy/4MBqFERPH3/Jly/bTV4p+Q1NvdK?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CF90530FD89FE2488587DBC503C6DD3F@namprd05.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR05MB8531.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5bc2360-867e-4daf-eb20-08db3525d8ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 16:01:27.3358
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TA6YSqHv4sNFC7cLwAw3IpondsRdnnhDiZmUSJkaqDEYiWPfOuyLjgmv+uIPhY6VUevqyl2mgAfvk9xiQlJESA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB4492
X-Spam-Status: No, score=0.8 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On Mar 30, 2023, at 3:52 PM, Alejandro Colomar <alx.manpages@gmail.com> w=
rote:
>=20
> Hi Nadav,
>=20
> On 3/14/22 13:23, Alejandro Colomar (man-pages) wrote:
>> Hi Nadav,
>>=20
>> On 3/7/22 19:48, Nadav Amit wrote:
>>> From: Nadav Amit <namit@vmware.com>
>>>=20
>>> Describe the new UFFD_FEATURE_EXACT_ADDRESS API feature.
>>>=20
>>> Signed-off-by: Nadav Amit <namit@vmware.com>
>>> ---
>>=20
>> LGTM.  Please ping when it's added to Linus's tree,
>> and add a comment with the commit message that added it.
>=20
> I've checked that this was finally added to the kernel.  Should I apply
> the patch as is, or is there anything that was changed?

Thanks for following up. Nothing to change, just apply it as is.

Regards,
Nadav=
