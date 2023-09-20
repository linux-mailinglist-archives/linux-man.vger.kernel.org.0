Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6ED7A873E
	for <lists+linux-man@lfdr.de>; Wed, 20 Sep 2023 16:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236594AbjITOim (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Sep 2023 10:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236830AbjITOiR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Sep 2023 10:38:17 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CEBD199
        for <linux-man@vger.kernel.org>; Wed, 20 Sep 2023 07:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695220635; x=1726756635;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=4BiIxoqG8Ocns+X2hvRCT4CZMVDK+KHpAV/XmphLCgI=;
  b=TrMIL+FHTrm0LIEMfUApTIBSk45503APEAB78KloWQf1FvIg7MV6Gv6W
   lm95j3Fm6cdvtMFLKQ4Et5yfzqChowMBkZKoJKwHr5soAppXdrXXhj2Ti
   NtJrHf00OsjyRYRgwKHirJEJc9ePnBbXjPaa68AHdEQsDvXOtAhcbRBXH
   3MpJtXREx/wmTaAOvNe3zyqDbSyQkN3QaUTCdF5od5s+exWCQb/qL1kis
   WhyWVA8ckvXS2lKoFCAZeYHPI6EWQ3t4bAN3LoLKMcrZQF9zGGnZ1KeU1
   M4YuesEOql/j5qHUeiWAaYLS9lgsiHh09cA2jRSYV88BnoRSetJ695ViB
   g==;
X-CSE-ConnectionGUID: JaxrkK6RQjS3/GCUQVPRLQ==
X-CSE-MsgGUID: kxYSqxU2QRKK4Y8anaszNQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; 
   d="scan'208";a="5539307"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 07:37:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 07:37:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 07:37:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJCzxC4Y1OkpYDbpc/RVHrhhjkIBM4mEbWUZj1slCwLfN+1MdljKZAZv+6XIyJmh/Mbu8CsGEt0YVBoO1C65Q5dCoO8ls7ZgX0bqE2HoNCiXHo8v19t6t2eW7ai/Obe8FhP5x4NNGE76JWbUC/zV5GLzmwda68a8cRoKWy3+IHD12bWgpgxmih1XJs1iuotkbgDGv7zEp2EVDYoOvGEAQnkOwT398RWjXZsxn0yoIbPI6PNXam6f70TXnfjuyg3ljOdL950z51o9GudC7O5iiBR98yaQ+LI9FOOj3kZE8UoLO8uK68t/tqbgngpgQd0AJmS21Sv01PcQJWrjuzU/9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4BiIxoqG8Ocns+X2hvRCT4CZMVDK+KHpAV/XmphLCgI=;
 b=BThFMub3AMsz8SnD/uVE7MS4RJUHCc7jmaPrP5AcMRhIg1mRQj9nbpbItLRBZmlh1j2nTSXYY/vHUhnN5qDH5gwCqboOnIztCANvL+Uz5ICDZ/oI78VfFr/fm7VXDajc24RGolpzDnOiXRPlnakXHsGQDfeBts6HO7To2zG8i6/L52vaIKHxwE2XCiJ44GlCaHW60ta82zt4b7MMJFnzEP+AlyWK5A6oNIohMAEgnIkEJHEfr+xOPKVoRWAK7ukfbdFyyxIy88CoXOSDMFnEYNe9Uwl2KeKtEg9EIM7qkf7D0RQcT2erm1kcPW49gzdgwfSzBxXZjVS9eM59IwvNOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BiIxoqG8Ocns+X2hvRCT4CZMVDK+KHpAV/XmphLCgI=;
 b=jonXpyCRUAvAM0Vwg4tZZpd5CRpmYauJcX7vYJUngDCcQZYwF9mtOIphfSPXWAtliy3uBsI3bsFcLevaZoZ0J+3os3vSFXhT8MYPlXlyvUPdkOgeY9ykw//2s4J6FSO3X3RIyVoGOXsa9Xu0QDltA21pO5hHzxndzSQcw/+k4GU=
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 by SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.19; Wed, 20 Sep
 2023 14:37:05 +0000
Received: from SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1]) by SJ2PR11MB8369.namprd11.prod.outlook.com
 ([fe80::8392:9ff5:9dba:cde1%4]) with mapi id 15.20.6792.026; Wed, 20 Sep 2023
 14:37:04 +0000
From:   <Don.Brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 00/10] smartpqi man page updates
Thread-Topic: [PATCH v2 00/10] smartpqi man page updates
Thread-Index: AQHZ1Gl9kVPRdmxBqE2x6sFRC/sfMbAj9s0R
Date:   Wed, 20 Sep 2023 14:37:04 +0000
Message-ID: <SJ2PR11MB83695FA00A025563EB21F3A5E1F9A@SJ2PR11MB8369.namprd11.prod.outlook.com>
References: <20230821195726.446748-1-don.brace@microchip.com>
In-Reply-To: <20230821195726.446748-1-don.brace@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8369:EE_|SA2PR11MB4795:EE_
x-ms-office365-filtering-correlation-id: 06961a3c-e37f-4735-3a63-08dbb9e70f4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BwQ1EWOCGe5lNQHAKXvIs5SuePuHcfkWqtWQPxTWQZ8Keoic9C9TNZukjnsZ8rRL4q8zZeiafMlEdsVcoUoc3/c21V0v1jL31+2dAheAKZeo6uUaeSY9O2krjuOwBWtIJWOy5h1hlv38vPohM+Rzd6psUyTTlNgIu2pYHU5sAfvEjWLSz1fK3FN82Obx7mRf2IKiVz3keIed9myVNy0auYpl79VTnUIT+wKpqaGrmQPHfGjDi3oqmZLzFEhnPod8F7ePCSDgHKbNWT5atNmaR8JeqXATSFutv9dqvpPPC0zKmbFkI+2Q6tJUbh8QidR7g4SFX5ewxNejHy6lcmLa8WCty7JNp0pbyu+pqknRHxTte2er5fcLKHn4Q8z5794CRPNE2rbejOlWxqLBwyf5uqyLvBnMFb4N4T6JFgc0ysx/G5vW9kxrEaeZ3EBeslB2D5LNa63b99o+ErBHJmwvk4fjEpQedoTFQEAYdvStc/1j4y+reX/bB9516q5PCAUS6KRvNZ/cpRQf3G2msqDYp7LeqZOrt1dmzcJqBmrEUY9SC2f2aUGIk6ZSiU5wvPULuDmJLm6A2urIrZHU4k9q6seoXaullVYqdgXxJ0s7jlc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR11MB8369.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(346002)(39860400002)(366004)(396003)(186009)(451199024)(1800799009)(55016003)(5660300002)(41300700001)(26005)(15650500001)(2906002)(122000001)(38100700002)(38070700005)(86362001)(33656002)(4326008)(8936002)(52536014)(8676002)(83380400001)(7696005)(6506007)(9686003)(478600001)(53546011)(966005)(6916009)(91956017)(316002)(66946007)(76116006)(64756008)(66476007)(66556008)(66446008)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Yiy7wIR5hIAYSMcI+MX3taBJp2zTXCn4mHqWZzYcADo0ugtoH29plU+Xrl?=
 =?iso-8859-1?Q?bGPfN/nxleSOwgsj8a0IcrjwnJiSUWJEdfZ/yfNMrUIfmZb6QhkldSnwJz?=
 =?iso-8859-1?Q?dql+jsM6YB5ajBt+LsCswwiHXSIIWPkav6eE+V2uJDOruumSPMCU7rnTo1?=
 =?iso-8859-1?Q?MEBgYCQJBYqHiq2KqkQ5YXcWWdN6U6ZRCq4jnYdZseL+ggzy0oMoxnHa/x?=
 =?iso-8859-1?Q?MlI96smiLGxDk+Ejnw51YwiQGpvBPNa0YqrKZ6rFUUZ1e5vlZx0lTQBPrM?=
 =?iso-8859-1?Q?qHOltQduTYauBpUZtmN3EXJEmTbmscsrCeVkeha5J18s1O/Ual1pkXB1UR?=
 =?iso-8859-1?Q?w9v0t9Ev8t6XuBtQgFHSC9UCvXLC7Y7lThW5sFJGtH5w5kXUNbbn9XO3du?=
 =?iso-8859-1?Q?b6JDXAcQq3ONhLmtxFuHEA9+rg1stfD9lrhE7RtZEbBUdN9Qj88PzsJr7q?=
 =?iso-8859-1?Q?3qbvFvtkgD4CoHL42SVVgfEWMzTVTXjGwU+aaK7P0/VOAuD06PqpJ/ibS2?=
 =?iso-8859-1?Q?NhdiP9wGhLUXkUYGr2QBNkxEZb9r/19TU++WEjmo+u8t/gHCNpRPrTlPYb?=
 =?iso-8859-1?Q?kC66kZGF7MQ4NlvMa96Y27cGUT6LVURWpmT1II0QDst/NtDZyGPx47PF2X?=
 =?iso-8859-1?Q?foMDF67g15OIa77pC24xGchqdfVlhgMko7UW/qGYzpqo0R+Dysmi464Wq3?=
 =?iso-8859-1?Q?e2dCgHmb3FB7D+KGfYz5/yk4OdMLmprwj4RejJYqVn31oJ6eCGTIHrU7RQ?=
 =?iso-8859-1?Q?1lNvdwePCxrK5JAdZ6o8LxPPevylPXgGrOpM9cCrDUxUpPU+SGrTwksygZ?=
 =?iso-8859-1?Q?W7wdaaHvg28VrTv0dQsEEA/CqjfR69gClcc0b1TrFGtZjDc1pjtKRl5Bbf?=
 =?iso-8859-1?Q?OhDD980fN6RFYPmOKKMol/UBg8ejQijZGF0N0vlEeYbOnUn5rLhkRUvAip?=
 =?iso-8859-1?Q?ZYQRlgoBXT9lLPYJEygWj9o1GyF5HDik6pHKUjLNOzrIuaF24+J6m13xHj?=
 =?iso-8859-1?Q?R1uxuOp0J5prgJrR6bPQ1Z2jteXlRe2pxTI8W4ABdv2+qDM5pnGEH8aLmV?=
 =?iso-8859-1?Q?UmMdUbVOenenq7HteCOOcvUNP/tZ78T5EkO9XXDZzkgglk8Z+k2KyjazGW?=
 =?iso-8859-1?Q?YSs16WXh/VjlT6zOwup6W34IR+RiBaiBKazlciDD0AsDfRFOhARuC77/Ss?=
 =?iso-8859-1?Q?+a0VQZcxOgKSG6nQNNq5at2i0V4JYnIq3F3DuE2o16pZ3rslONwppOG4Me?=
 =?iso-8859-1?Q?MF8mzj0CGkEibtD8jatHbj04h1bLsjTYqMwywMXSQqkITHSm0Elp1gmnsx?=
 =?iso-8859-1?Q?nYRzEtcBqXBH32XZ4cUgkBFCDUX8vk4HYymYKlvtTOZGbMqBZ2TK4Kl++h?=
 =?iso-8859-1?Q?icXo95aaDoQhhObK1t0ivoGS8euPtJkwRX9OTpR4GvpA/trwdve/2oYJQY?=
 =?iso-8859-1?Q?kBOp2oWNlDM0o68LLz0nw8xN52PQom3AAgzXs6IFD7HJMmoU9eJDBkRZ5C?=
 =?iso-8859-1?Q?vuAy46qwB16CKQgeuKNnIDWjinfe0kVMFjypim4EaxjbbqV+hdYYpINf00?=
 =?iso-8859-1?Q?goEx6XTll6ZBn53d+eR6CkFAwxLo7wScVDzLLsGNS15OyW2QYhk698qiXF?=
 =?iso-8859-1?Q?JjEKxKp5hdR3MZ0Ppy8EHeX/mao6+PyJF7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8369.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06961a3c-e37f-4735-3a63-08dbb9e70f4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 14:37:04.8214
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 05UwpO5UfEb8ZW0mBX65ynDrRs+o5gNcRFTnGzcvVjJD94BoGOcw3ETona502BrdxvSN0yleylCFVM0Ue7eFrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4795
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

ping=0A=
=0A=
=0A=
From:=A0Don Brace <don.brace@microchip.com>=0A=
Sent:=A0Monday, August 21, 2023 2:57 PM=0A=
To:=A0mtk.manpages@gmail.com <mtk.manpages@gmail.com>=0A=
Cc:=A0linux-man@vger.kernel.org <linux-man@vger.kernel.org>=0A=
Subject:=A0[PATCH v2 00/10] smartpqi man page updates=0A=
=A0=0A=
EXTERNAL EMAIL: Do not click links or open attachments unless you know the =
content is safe=0A=
=0A=
These patches are based the man page content found in=0A=
git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git=0A=
=0A=
The Linux man page smartpqi.4 is out-of-date with the man page provided=0A=
by our out-of-box driver. This patch series brings the Linux man page up=0A=
to date.=0A=
=0A=
The changes are:=0A=
smarpqi-update-copyright-and-email-addresses=0A=
=A0=A0=A0 The copyright, email, and URLs have changed to Microchip.=0A=
smartpqi-update-module-parameter-descriptions=0A=
=A0=A0=A0 We changed some descriptions of some of our module parameters.=0A=
=A0=A0=A0 Clarifies what their default values are.=0A=
smartpqi-add-module-parameter_disable_managed_interrupts=0A=
=A0=A0=A0 We added a new module parameter to allow users to disable how=0A=
=A0=A0=A0 interrupts are managed allowing them to change affinity.=0A=
smartpqi-add-module-parameter_ctrl_ready_timeout=0A=
=A0=A0=A0 We added a new module parameter to allow users to change how=0A=
=A0=A0=A0 long the driver waits for the controller becomes ready. The=0A=
=A0=A0=A0 default is 180 seconds and can be changed from 30-1800 seconds.=
=0A=
=A0=A0=A0 The longer wait times are useful for large configurations.=0A=
smartpqi-update_FILES_section=0A=
=A0=A0=A0 Minor change to the FILES section. The word "Logical" was changed=
 to=0A=
=A0=A0=A0 "Disk" since HBA disks are also supported.=0A=
smartpqi-update-host-attribute-descriptions=0A=
=A0=A0=A0 Updated the descriptions of existing host attributes accessed thr=
ough=0A=
=A0=A0=A0 sysfs.=0A=
smartpqi-update-device-attribute-descriptions=0A=
=A0=A0=A0 Updated the descriptions of existing device attributes accessed t=
hrough=0A=
=A0=A0=A0 sysfs.=0A=
smartpqi-add-host-attributes=0A=
=A0=A0=A0 We added some new host attributes:=0A=
=A0=A0=A0=A0=A0=A0 enable_stream_detection: For RAID5/6 sequential write op=
erations, this=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 can help increase IOPS. Reduces Read/M=
odify/Write operations.=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 This is for AIO capable devices. (Volu=
mes consisting of non-rotating=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 media).=0A=
=A0=A0=A0=A0=A0=A0 enable_r5_writes: Send down RAID 5 write operations down=
 the AIO path.=0A=
=A0=A0=A0=A0=A0=A0 enable_r6_writes: Send down RAID 6 write operations down=
 the AIO path.=0A=
smartpqi-add-device-attributes=0A=
=A0=A0=A0 We added some new device attributes:=0A=
=A0=A0=A0=A0=A0=A0 lunid - SCSI LUN ID=0A=
=A0=A0=A0=A0=A0=A0 unique_id - 16-byte ID that uniquely identifies the devi=
ce within the controller.=0A=
=A0=A0=A0=A0=A0=A0 path_info - Host:Bus:Target:Lun (h:b:t:l), device type, =
Active/Inactive=0A=
=A0=A0=A0=A0=A0=A0 raid_bypass_cnt - Count of the number of request sent do=
wn the AIO path.=0A=
=A0=A0=A0=A0=A0=A0 sas_ncq_prio_enable - Enables SATA NCQ priority support.=
=0A=
smartpqi-add-sg-entry-to-see_also=0A=
=A0=A0=A0 Simple addition of the sg(4) driver to the SEE ALSO section.=0A=
=0A=
Changes since V1:=0A=
=A0=A0=A0 Broke up the large patch into multiple smaller patches due to rev=
iew by:=0A=
=A0=A0=A0 Alejandro Colomar <alx@kernel.org>=0A=
=A0=A0=A0 Link: https://lore.kernel.org/all/096ed4d5-945f-5ac9-eba3-c9be5d3=
2cfe8@kernel.org/=0A=
=0A=
---=0A=
=0A=
Don Brace (10):=0A=
=A0 smarpqi: update copyright and email addresses=0A=
=A0 smartpqi: update module parameter descriptions=0A=
=A0 smartpqi: add-module parameter disable_managed_interrupts=0A=
=A0 smartpqi: add module parameter ctrl_ready_timeout=0A=
=A0 smartpqi: update FILES section=0A=
=A0 smartpqi: update host attribute descriptions=0A=
=A0 smartpqi: update device attribute descriptions=0A=
=A0 smartpqi: add host attributes=0A=
=A0 smartpqi: add device attributes=0A=
=A0 smartpqi: add sg entry to see_also=0A=
=0A=
=A0man4/smartpqi.4 | 229 +++++++++++++++++++++++++++++++++++++++---------=
=0A=
=A01 file changed, 186 insertions(+), 43 deletions(-)=0A=
=0A=
--=0A=
2.42.0.rc2=0A=
