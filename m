Return-Path: <linux-man+bounces-5302-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZXznGVMH1Gl8qAcAu9opvQ
	(envelope-from <linux-man+bounces-5302-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 21:19:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A90F13A693F
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 21:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52FAA300EAAE
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2026 19:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A124314A9E;
	Mon,  6 Apr 2026 19:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unisys.com header.i=@unisys.com header.b="RgcjvG/g";
	dkim=pass (2048-bit key) header.d=unisys.com header.i=@unisys.com header.b="iKBbtTf8"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-004a6501.pphosted.com (mx0a-004a6501.pphosted.com [148.163.134.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11B82D7BF
	for <linux-man@vger.kernel.org>; Mon,  6 Apr 2026 19:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.134.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775503184; cv=fail; b=tvO0QPAV6kkuwdwW2i5V05qF8LtYBQFASvz/+RkJ/v5jfAHzeFYiaZTgxL8FkYBuDN2lvwajf1TmQlTGGV95KWDnn2Dy6mky1+Eud9Xiy5KtimJ7dEghImVt4N/V6LBjg6n2IO2Pa1oMdvHmOFxGDto2JS+fGGDVbB7ht3Cw+Ps=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775503184; c=relaxed/simple;
	bh=u4zLGa5NGBHLmp97CM8XFPPia+CrFWTtRsjYJtVUfos=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=mob0i8FgUxLC8ZrAWUb9DUMGI8l6YSUghPz3E0sibtNJhqQHzXjdQSNqGDM0ANWpiJhhtBim1hr96Gq6UE+hpqT9HECum2v8hcuw+aIjqvMgb12lRjIqmsq2/VL2OO9IDFmL/6vgOQ6eyd3ygoGeL8/MmDXlKO8aXCNPXFEdLvg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=unisys.com; spf=pass smtp.mailfrom=unisys.com; dkim=pass (2048-bit key) header.d=unisys.com header.i=@unisys.com header.b=RgcjvG/g; dkim=pass (2048-bit key) header.d=unisys.com header.i=@unisys.com header.b=iKBbtTf8; arc=fail smtp.client-ip=148.163.134.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=unisys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unisys.com
Received: from pps.filterd (m0372622.ppops.net [127.0.0.1])
	by mx0a-004a6501.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6365rg0u2366470;
	Mon, 6 Apr 2026 19:19:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unisys.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pps1; bh=u4zLGa5NGBHLmp97CM8XFPPia+C
	rFWTtRsjYJtVUfos=; b=RgcjvG/gmn1KfOKxfaxXlTYaW+QUBYl+SKNss+GekRo
	MSL3Py4UP52hUa8e2ZFWkk6tSLBkRQCSyi4YelKxErQzJ0AbDw1VWe+nX6AwaQJ4
	5bphP9aLkM46S47RTnXf6VNYAzBdIi4ZEIoT4OeW/Nz4ngWrTxaFWhd5Liw37+qg
	bsn3H5jIs/r1Ck8q8dDrnca/khqtduiTFys5AL/oyBT3bCK0Bi7QyW8Vcdz9ocHb
	l8N3C6Y3t46bsUgLz5ilhexZmMvJwnibu6ZIzhA0Fes0+hIuxEkXd+Fgf6kjFYjd
	RVVDUaB+bG7J0vPlr0Q4EDq5p2K/Gr1sJQBSl/NIoMg==
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012023.outbound.protection.outlook.com [52.101.53.23])
	by mx0a-004a6501.pphosted.com (PPS) with ESMTPS id 4dbdeac8ks-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 06 Apr 2026 19:19:40 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tfwDjA1LBtTkeQxvUhKPx8bTJQrlH4oaTxWCzMB9Xhh45+/JB05zazMrFPmQxY1TdBVRQ2Q57wWgbImEDaNJ5HG/GV8gr/7uoiOAPFiLdzqHB9A0V4zplqY0TrbMuEWp9227/zf2nP0TicAt8iSY8sB6C4ePLSUexs1P9A+26xZvJ7a/lEsorTKYd5yfP4EDdYTk0/s0UZGgNsoRoMSA+1cm6emIf1uZBGbsNQFtKSzIMUSeVZNMh9BNFLsWBa0VtRqHBG7XMcf/yIMBC5GO6qwzxUbeFScYm0EjYiVi2DgPaf56V1Ttvjm+SRQSFgq+QgSo4/3WRWUKA2k4uSQJaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u4zLGa5NGBHLmp97CM8XFPPia+CrFWTtRsjYJtVUfos=;
 b=ePHltt26NV//QFkJxINip3vpGJH3tK7R6T/tfEjBDStFyKFVSy3V4U3jp6vvr5kUpo5f0amLl3XdBd/2gbEKcNeCEono+ohP6X3AldJq4ATPvBsa3o32NiQy8eNIKqTFH7GtUD4d4OhDLWJSj9AuxS9dXPDDVjuHrkUFb6+a2BWS8ApTaAEx1H1OW9+eF1WkytHM7cPZyblVEOTHIxeiTY6H+ucxm/QxH0NCEbjzBDvCdYMeIMcCfRFbfIN9qK16wruMvbm6s2XpI2RUv5iQjSiTczR0G79YROw82fh2VWh73/GyiYkATqKEE6uORjxgY0rx3y5QsJBe/fGZo4wM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unisys.com; dmarc=pass action=none header.from=unisys.com;
 dkim=pass header.d=unisys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unisys.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u4zLGa5NGBHLmp97CM8XFPPia+CrFWTtRsjYJtVUfos=;
 b=iKBbtTf8hKu3SPO/dQmPwz6W28QivlxuXsdNL5YJzdfr2OV3cn6PCEGJzPMnP7B46WCeQhHudFq0FNfseeXTUS2U/eJdG8Dvyckri+txis5LCeHTFYe3zwT09aWgfG2AsMo0Hd7g3zhpliqczDH4kjSpvoYBbO9j7dBityi+oJ1etVK5PVaxeGwDSgOebSTutfS6KKKWI1qJnm4NRLXahKHjxnoUZYRke+E+8zQqGJEP8+ascHYcOsRcI78Hgp5oPTL3+PsHonUif47eC1CWfZ8HIWp+7CyOS4M145nhhYGDNWv0861M9be4ZR1zcXkNqQZBqfJL/hquPcaaP4KUaQ==
Received: from DM8PR07MB8854.namprd07.prod.outlook.com (2603:10b6:8:13::5) by
 DS7PR07MB8320.namprd07.prod.outlook.com (2603:10b6:5:38d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.28; Mon, 6 Apr 2026 19:19:37 +0000
Received: from DM8PR07MB8854.namprd07.prod.outlook.com
 ([fe80::e02:920f:bfe1:a8a4]) by DM8PR07MB8854.namprd07.prod.outlook.com
 ([fe80::e02:920f:bfe1:a8a4%4]) with mapi id 15.20.9769.017; Mon, 6 Apr 2026
 19:19:36 +0000
From: "Neitzert, Greg A" <greg.neitzert@unisys.com>
To: "alx@kernel.org" <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Man page bug - hostname.7
Thread-Topic: Man page bug - hostname.7
Thread-Index: AQHcxfmdZbgVzpQUiU+Yr/68COC6fQ==
Date: Mon, 6 Apr 2026 19:19:36 +0000
Message-ID:
 <DM8PR07MB8854A4169C2DD8BC4DAD6ED0885DA@DM8PR07MB8854.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_Enabled=True;MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_SiteId=8d894c2b-238f-490b-8dd1-d93898c5bf83;MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_SetDate=2026-04-06T19:19:36.408Z;MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_Name=Public;MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_ContentBits=1;MSIP_Label_147f6f79-9070-4ada-976f-86354d57e079_Method=Privileged;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR07MB8854:EE_|DS7PR07MB8320:EE_
x-ms-office365-filtering-correlation-id: 956f3dd1-25fe-40ba-e250-08de9411712d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info:
 6EDpAhzfNtuHtP2jtyVJsv+h3pswIIFABawdnsjIDWKp5WXLqkQW2WTl5OCMRgVrUdsH8PZ+EgEbDj3IAv+/jlX4bhgT/qxynb3zFMRQghKTozm6cjAT84Etc+OAYz79wVsi0Vme1a/loaetVScxyjnQ1m4U9D/ILDvOLvbqvXjH0Blcu0ygKkzfHNzKNyzPYkjo8Hx3KLAsBLaYYL0pUjzqmfrSKPPUXDTvF3a8H7/T9uJwgi7POP11GDqXP6WCDi9bXgqOg7nFP/kMppLiSbWVfBOdS6d0OKnH61TqxmlrmarNtLXwWhDFBd6w8gCHrNMtI5iIsjV8SvpODG3cTEQ9BAw7sCs+Cf3KS7kuueSg+PB8oIrQdTQU2I3wH6py647BnHF/QzMke60ZgsNPfwHD5ZztoLT2T3+mRNpdzlzF65TsJLEITAy/3LHaOfq1qVOYEYlnX860AZzQaqrG9F+jiVq8v40gBm7RNrogXM/yCdlnAlPA7QFv3n3029eEgeg5vYBpuabIOkLfIwb4oR8wK3T9wFnkFizkeouKnjIlQcQ5EW9ev2WikdyDWw5Da4pf3d/8rXxu5F+KLWHkaU9WtR8e1M7f7BDUDAyZ3yR7jPDtbPvbagpw7Zr3Ew0beYk7AktkbWSfdLo9VBF3dX6bzTrnGMvpmAM5T0koguX3XOY6KBgcz52fWKmerY3fMX+NN4wK2XQg1b7T4mXdaDs55hWa7Q5n3smFO8ntw8QqPM+8lAwDzig6FLLopdCs
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR07MB8854.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?dFFkVklGTXRIMVppeWJDU0RjSW9qQTlGSVJOWXhHbWh4MEFsV1hRVkRmeC9q?=
 =?utf-8?B?cU85QmpEOEVkVFZMLzd6alE2OVA2dHovSkFOUXErM0wxVHpQUy94NkNTM3dN?=
 =?utf-8?B?MEI1OVlwaVlHNnZPY256YXVOYmE4Si9kbUNaOGlJbGVnTjROWW1qTlZLeUp3?=
 =?utf-8?B?ZFBvSGdnU3hnMWhXN2RDK1FQY1dWdkhFVC9ROEM4ZEp2TXBDdjVyMHpJZHZr?=
 =?utf-8?B?VVBxbDNmWjVlNlgvbnE1dkZVbi8zQW9iQ0dYME8zNEljYzk4ZkVJT2NSbFZJ?=
 =?utf-8?B?UnpwNTNIS1JlVklJRWlIYU5ZNUFBK1lMYkZ4dW9TeUs2RVIrNmlZeWpnbnZr?=
 =?utf-8?B?UE05dGd1STVpb1RiZEtMV0hiZkUxeHJ1NnU1T1lQaUNwaFBRWmUvcDlYSlV6?=
 =?utf-8?B?cWU2QnBXd01GbWMxNkFseDljb2NjQnhCOVhuR1dCSjRFMERLL3RxaWxYc1dJ?=
 =?utf-8?B?TWc0alplSXhXZmhOTW9iekNTY3VDNnZCNWNWWFRLWEpTaUhydExHUmtlZlN5?=
 =?utf-8?B?bEZjTVhweGV1UlFqK05TejI2S0VneTBGTTg0czdTVmhXZmM1bHIrSHlXVDJj?=
 =?utf-8?B?QjhXMDREck43MGVQSDFGNnFyaGdnU05PcVUwRWNLSE11elU3U1lxSTl0OVRl?=
 =?utf-8?B?YkFaS2ZWcVNQNjlDMXhwWFFXWG5XWmRwdG80MWlVSUdJQmg4QjlmdnJRSVo2?=
 =?utf-8?B?ZlFDUVNMZmN0Nko4TElEUStqUnRMa3p2NVpEZ0JMa1JJbTlSRDJQNXQ1R1Zy?=
 =?utf-8?B?MUVSbWNmLzVNdk4vWWp0WjN0SXFOeUl1dmFxV2FCV0JFMlFzUWVFSnp5VUVz?=
 =?utf-8?B?KzZCTitkYm5ZV2RFMDYwc1dodnVMYit1U0c2aHlna09QSDkyaFB5dk5QZWFY?=
 =?utf-8?B?NGZHNUgrZDltL2Q2N0kybUVqVndRdjg0MnRsaGRmdzRYbk9JWlZ4TWF5QXdN?=
 =?utf-8?B?cnNWenc4Myt4NXpEcVJRR2RNQVc5YW1Ha3pkazE2RURPTW11bFMwY09mSEdj?=
 =?utf-8?B?SHlVdEU2SVBQd29wMnpSenpBZzlwcVpyZFE3WU1jY3U0RWpOTHRYM3NhSG51?=
 =?utf-8?B?WEN4dmJDZ2ZFSWxqMm1aajhtOU9BamdOMkpYVEVkOXVlakJ4NGh0bGd6MzQ3?=
 =?utf-8?B?S2FsRllNTjRLaTFBVnNieUs0ZytWbkZtZEYweHlVQ2lzR09rL1Zqa1ludkJV?=
 =?utf-8?B?aGRZQXpsRGN2SDVVazI3UWhNNHI3eTJvclNUdmtLU0M4OEEwd1ZxekI1Tno2?=
 =?utf-8?B?MnlzZk9ZYkRlUTFLRXpUY2ozb1IvM29tVlhkNGVNMHN3Mk1NRnBxcmpMZUZX?=
 =?utf-8?B?Vzg2Nml6ZURFajdMWVVlTHdaMmYyeFo1Qkh6UTNCNUFQcmt0RTdlbVlwTE5h?=
 =?utf-8?B?TXhrZmNQUHhJMmxReStIZGJ5UmJ5Y3V4b2xKWTY5b1oyRHUwU21BQSttWXFn?=
 =?utf-8?B?ODR4ZGllQTU2ZVB6cVFxenlkYUpQNTJjM1RSQzZwRnpmVE1UZzVHL1F3QnND?=
 =?utf-8?B?QzdabllhL05DV1VYTUdVTk5ZOVdUMHkrd1RDVVd6dmdUV0NxdU9tdG4vem5H?=
 =?utf-8?B?aU1lTE9SeVJlcVN1eG03a3pjSy9WaXN0OHQvcXBZaHNYWjFjSkE1VDlkejFy?=
 =?utf-8?B?TFVxMG0yTjZ3NC9vWXpjYXI0blJwaCs0dUNjaFIxOUtBOXoyeWREQVI0bzcv?=
 =?utf-8?B?N3dNRGxQb3NFTk1wa2lDQmx0bVJWMWl0K3ZleGFNLzBESHR4QitzT2NqYjVE?=
 =?utf-8?B?cDJLbm02bGFidTFFL0VvUXFpZ0NZT3VuWjVTQVJsRWN6Um5rZitSQ3UrUUtJ?=
 =?utf-8?B?eXV1ZCtNRG9ER0swZDlpbUVYMWltclpNZjZQOHQ3QTBrYjh0TGZCTmdEVnU4?=
 =?utf-8?B?R1ZPOGt0TVhLNGo1UDdxUEFvUS9kZU1OT3ZGZ01hNWhMaHEzdnRVbGQrWjNE?=
 =?utf-8?B?V1YyTmdHakdTWE5LZEkzYU1sRnNFV1doMnVVN1pFOEhGTWtyNkZNOSt6ZUVv?=
 =?utf-8?B?cXQxYjhBbTkrL0J4Uk5qYW1IY21COFlHR1QrcDNGclpaQ0lkdG5RSVoxQWdD?=
 =?utf-8?B?aVYxaGI3Rm4xeDZGYThick1vR1JIQ1FnSmdWTzRNWjBVb1RuUWx2RDhGQ0N5?=
 =?utf-8?B?VWpLV0xzaFpKRE1xeUdVdlM0ZzM3ZUd3RzJaVUEwckMyQmlJTlpZVmd6K3JV?=
 =?utf-8?B?cDJ4cmozZG1lSnZrbHNzbDNyWmF3anI1aUtodWdhRytQSm14NU82SnJob2E2?=
 =?utf-8?B?K0lacEp6T2gxbm03bE5FYnhqcmVHcTRCaVRTdGNlcGlLTE5mQ1ltUklJa1dq?=
 =?utf-8?B?TExaMzhKQnI2QWpQL2xDVVBEcmgyVjFPSkxpWmJ2clRkSW5aQmpwZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	EL64seW82kNKgndlTSxZQGAuZ0voRmBLozFdBavtgXAX+ySkZIjQraa7DVV32upBmUqTxnv2+AhpHrbQIFo3jRws7idOz4pVtPoHI8Xr5XslEFq66GOV4/4K7ueS4qf+Sh9lFUrW32W3YCXaVbYze3aTxC4H7WX9biXYgnwZqzp5iyz1Kd3mRJ4+XuF8+MlFIl0qooJEc09lae2IicPYo0ZzpqdBDQvfJQQAPj9DMV6jedAp1aXq+2uwfwMMWrEVMq937AXvGHsuAcIXVKh3WOqKi4RbShSSpTRU4dCw5ixTtuHbpgMnNPV5iu3hDx4MGSIrXb8l2aEFl6mNeKnXvw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	pa2v+fv+n8BC9oMeztYoEp4LHS9c/3+w0sq+HUgYJcEbxQZdeV08EZjwdYSdvmIlW9T0sMNcytI7fZ6/HxfJxV0J27xuIuA8UILGSgJDnsWPkVMSjwsQH+n8ShxTw95s3oa0S5ovBTqz3ofnxENozo/JvOZoo0Q2WRFTiF95nV6LTT2bF+4VWtkxqZMndkkWYyWF9qYz+mYDkvZjX+2q7dxmhaOInvgYDx8IqhHC6lJIK5p9zXkUSouRS/ix0vXIx4QsRO64FHqay5pJlpEcC2rkbidq6Np/jVqalqnHCU8NJZXcxkgIDqoUQLS2f6Be2FYVrbFpPHQXW7jDCMPjjS5pEVGiHbCaQ7o/X7gQSTUqrnK/MfrhHnGO8tgQ1D+Iv+1k+72k9+qisp1sfi+n78wbBj8K/WabjmMmPxi8fr1XqOxhu37IPC0spyhbSgqdWWURk1/uoOR+aTTGIIXkAJg+4FUNMAZEZa9nUu7kvMAJpZEUaa/70eB2A92k70OiB1WttCP123X9ZhDPDnpPIqVXZoDqQL8QcFvnhi8DpHTBsGJL4JVNAW5wtt2Ja5qSSOiGfR0rcXZha/cueAaghCdsSJlyS8sFcNI55Tm3ZZU/RA5Q7QlyiYyon2BmX4Xo
X-OriginatorOrg: unisys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR07MB8854.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 956f3dd1-25fe-40ba-e250-08de9411712d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:19:36.6879
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8d894c2b-238f-490b-8dd1-d93898c5bf83
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BKtDGclDKcMMWyL4Hs7lVBiuMhqRKjEZpVjm7h1DvQ44petIClClfzJaAZvR8OcahK5VcQfC9WeEgQP7bpztpXO0kRB/DCPWVSgFqbvy49c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR07MB8320
X-Authority-Analysis: v=2.4 cv=StKdKfO0 c=1 sm=1 tr=0 ts=69d4074c cx=c_pps
 a=ubW7OWQb4uJshPNbXurJQw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=JQ4eYwQU_AcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=HlSP52t_85hHLQkYTKwS:22 a=-ua9xHRTbd8zHYRRy-ng:22 a=xNf9USuDAAAA:8
 a=48vgC7mUAAAA:8 a=I3wuSmoYAAAA:8 a=JmH-q9cMEy79ayUDbY4A:9 a=PRpDppDLrCsA:10
 a=QEXdDO2ut3YA:10 a=Ap9nMbMnC9V8ZL6vI6FV:22
X-Proofpoint-ORIG-GUID: HTtzlArhMRuiQJkraD1s3aeSeKFJ5xKa
X-Proofpoint-GUID: HTtzlArhMRuiQJkraD1s3aeSeKFJ5xKa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE4OCBTYWx0ZWRfXyfy70BFg9PZV
 Q0t1iCz7t9wieOn/hiYyOGRZdyaWWlzVBk3+JT6Zzju83Ek5IVjyxBQBnjawPdclWE1wpFbSfbZ
 6xqhlPSrHnmoEkXyW3dZlXDxYJqOGK2S9jbTEOb6hCbJgIoVAVduruuGBxob9oZB1o3OHEscaKQ
 ga1O/nPRX5IS4hC7wHw6jNP/e9Lp9aiCZ+Ve540vCnsFgP0Ahck/rBdfcp2gRBpDyhiOMzp820S
 H4tcY4l0jsFluzfywn0pk5kRWZTjcchpl19N+Rp0d5ysXIUr3Xd8wk2Un3GnSjxyahV4MXnCmp2
 ee2AbXM77ZTqIJGzrTOIHN8mJ0zCW+WhXaj36JAGI1Oow3k3ZAqoDr/OzUeqVK24NrW/GO+XakU
 OQEGUd7kN0hHFUzCo9VONKDIaTLay10g91jfOYZVq0jnvxid/LYNQ/ITpNRKimpr+ihSRUYnQ/E
 SnDStOl2e+Mb0uZl8UQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604060188
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[unisys.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[unisys.com:s=pps1,unisys.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5302-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ietf.org:url,unisys.com:dkim,unisys.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[greg.neitzert@unisys.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[unisys.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A90F13A693F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGVsbG8sCgpJbiB0aGUgbWFuLXBhZ2VzIHNvdXJjZSwgaW4gdGhlIG1hbi43IHNlY3Rpb24sIHRo
ZXJlIGlzIHdoYXQgSSBiZWxpZXZlIGEgYnVnL2luYWNjdXJhY3kgaW4gdGhlIGhvc3RuYW1lIHBh
Z2UuClNwZWNpZmljYWxseSB0aGlzIHBhcmFncmFwaDoKCiJFYWNoIGVsZW1lbnQgb2YgdGhlIGhv
c3RuYW1lIG11c3QgYmUgZnJvbSAxIHRvIDYzIGNoYXJhY3RlcnMgbG9uZwogICAgICAgYW5kIHRo
ZSBlbnRpcmUgaG9zdG5hbWUsIGluY2x1ZGluZyB0aGUgZG90cywgY2FuIGJlIGF0IG1vc3QgMjUz
CiAgICAgICBjaGFyYWN0ZXJzIGxvbmcuICBWYWxpZCBjaGFyYWN0ZXJzIGZvciBob3N0bmFtZXMg
YXJlIEFTQ0lJKDcpCiAgICAgICBsZXR0ZXJzIGZyb20gYSB0byB6LCB0aGUgZGlnaXRzIGZyb20g
MCB0byA5LCBhbmQgdGhlIGh5cGhlbiAoLSkuCiAgICAgICBBIGhvc3RuYW1lIG1heSBub3Qgc3Rh
cnQgd2l0aCBhIGh5cGhlbi4iCgpUaGUgbGFzdCBzZW50ZW5jZSBpcyB0aGUgaXNzdWUuCkkgYmVs
aWV2ZSBpdCBzaG91bGQgc3RhdGU6CgoiQSBob3N0bmFtZSBtYXkgbm90IHN0YXJ0IG9yIGVuZCB3
aXRoIGEgaHlwaGVuLiIKKHN1Z2dlc3QgYWRkaW5nICJvciBlbmQiKQoKVGhlIGdsaWJjIHNvdXJj
ZSBhbmQga2VybmVsIHNvdXJjZSB0aGVtc2VsdmVzIGVuZm9yY2Ugbm8gcnVsZXMgYXMgdG8gbmFt
aW5nLiAgWW91IGNhbiBjYWxsIHNldGhvc3RuYW1lIGluIGdsaWJjIGRpcmVjdGx5IGFuZCBzZXQg
dGhlIGhvc3RuYW1lIHRvIGFueXRoaW5nIGFzIGxvbmcgYXMgaXQgaXMgNjMgY2hhcmFjdGVycywg
dmlvbGF0aW5nIHN0YW5kYXJkIHJ1bGVzIGxpa2UgUkZDcy4KVGhlICdob3N0bmFtZScgcHJvZ3Jh
bSB3aGljaCBpcyBtYWludGFpbmVkIGJ5IGRlYmlhbiBkb2VzIGVuZm9yY2UgdGhlIGZpcnN0IGFu
ZCBsYXN0IGNoYXJhY3RlciBydWxlLiAgSXQgbGl2ZXMgYWJvdmUgZ2xpYmMgYW5kIGNhbGxzIGds
aWJjOgoKICAgICAgIC8qIEhhbmRsZSBsZWFkaW5nIGFuZCB0cmFpbGluZyBoeXBoZW4gbm93LiAq
LwogICAgICAgIGlmICghbGVuIHx8ICFpc2FsbnVtKG5hbWVbMF0pIHx8ICFpc2FsbnVtKG5hbWVb
bGVuLTFdKSkKICAgICAgICAgICAgICAgIHJldHVybiAwOwoKRnJvbSBtYWludGFpbmVyOgogaHR0
cHM6Ly90cmFja2VyLmRlYmlhbi5vcmcvcGtnL2hvc3RuYW1lCgpUaGlzIGlzbid0IG5lY2Vzc2Fy
aWx5IGJpbmRpbmcgb24geW91IEkgZG9uJ3QgdGhpbmssIGJ1dCBpdCBpcyBjb25zaXN0ZW50IHdp
dGggdGhlIFJGQyBydWxlcy4KCkF0IHRoZSBib3R0b20gb2YgeW91ciBtYW4gcGFnZSB5b3UgZG8g
cmVmZXIgaW4gdGhlIFNFRSBBTFNPIHRvIHRoZSBwZXJ0aW5lbnQgUkZDczoKCiAgICAgSUVURiBS
RkMgMTEyMyDin6hodHRwOi8vd3d3LmlldGYub3JnL3JmYy9yZmMxMTIzLnR4dOKfqQogICAgIElF
VEYgUkZDIDExNzgg4p+oaHR0cDovL3d3dy5pZXRmLm9yZy9yZmMvcmZjMTE3OC50eHTin6kKCgoK
UkZDIDExNzggaGFzIHNvbWUgZ2VuZXJhbCBiZXN0IHByYWN0aWNlcyBhbmQgaXMgbm90IHJlYWxs
eSBnb3Zlcm5pbmcgZm9yIHRoaXMuClJGQyAxMTIzIGhvd2V2ZXIsIGFuZCB0aGUgUkZDIGl0IHJl
ZmVycyBiYWNrIHRvLCBSRkMtOTUyIGFyZSBkaXJlY3RseSBvbiBwb2ludC4KClJGQyBVUERBVEVT
IFJGQy05NTIgYW5kIHJlZmVycyB0byBpdDoKCiJUaGUgc3ludGF4IG9mIGEgbGVnYWwgSW50ZXJu
ZXQgaG9zdCBuYW1lIHdhcyBzcGVjaWZpZWQgaW4gUkZDLTk1MgogICAgICBbRE5TOjRdLiAgT25l
IGFzcGVjdCBvZiBob3N0IG5hbWUgc3ludGF4IGlzIGhlcmVieSBjaGFuZ2VkOiB0aGUKICAgICAg
cmVzdHJpY3Rpb24gb24gdGhlIGZpcnN0IGNoYXJhY3RlciBpcyByZWxheGVkIHRvIGFsbG93IGVp
dGhlciBhCiAgICAgIGxldHRlciBvciBhIGRpZ2l0LiAgSG9zdCBzb2Z0d2FyZSBNVVNUIHN1cHBv
cnQgdGhpcyBtb3JlIGxpYmVyYWwKICAgICAgc3ludGF4LgoKIEhvc3Qgc29mdHdhcmUgTVVTVCBo
YW5kbGUgaG9zdCBuYW1lcyBvZiB1cCB0byA2MyBjaGFyYWN0ZXJzIGFuZAogICAgICBTSE9VTEQg
aGFuZGxlIGhvc3QgbmFtZXMgb2YgdXAgdG8gMjU1IGNoYXJhY3RlcnMuIgoKClJlZmVycmluZyBi
YWNrIHRvIFJGQy05NTI6CgoiMS4gQSAibmFtZSIgKE5ldCwgSG9zdCwgR2F0ZXdheSwgb3IgRG9t
YWluIG5hbWUpIGlzIGEgdGV4dCBzdHJpbmcgdXAKICAgdG8gMjQgY2hhcmFjdGVycyBkcmF3biBm
cm9tIHRoZSBhbHBoYWJldCAoQS1aKSwgZGlnaXRzICgwLTkpLCBtaW51cwogICBzaWduICgtKSwg
YW5kIHBlcmlvZCAoLikuICBOb3RlIHRoYXQgcGVyaW9kcyBhcmUgb25seSBhbGxvd2VkIHdoZW4K
ICAgdGhleSBzZXJ2ZSB0byBkZWxpbWl0IGNvbXBvbmVudHMgb2YgImRvbWFpbiBzdHlsZSBuYW1l
cyIuIChTZWUKICAgUkZDLTkyMSwgIkRvbWFpbiBOYW1lIFN5c3RlbSBJbXBsZW1lbnRhdGlvbiBT
Y2hlZHVsZSIsIGZvcgogICBiYWNrZ3JvdW5kKS4gIE5vIGJsYW5rIG9yIHNwYWNlIGNoYXJhY3Rl
cnMgYXJlIHBlcm1pdHRlZCBhcyBwYXJ0IG9mIGEKICAgbmFtZS4gTm8gZGlzdGluY3Rpb24gaXMg
bWFkZSBiZXR3ZWVuIHVwcGVyIGFuZCBsb3dlciBjYXNlLiAgVGhlIGZpcnN0CiAgIGNoYXJhY3Rl
ciBtdXN0IGJlIGFuIGFscGhhIGNoYXJhY3Rlci4gIFRoZSBsYXN0IGNoYXJhY3RlciBtdXN0IG5v
dCBiZQogICBhIG1pbnVzIHNpZ24gb3IgcGVyaW9kLiIKCgpUYWtpbmcgUkZDIDk1MiwgYW5kIHRo
ZSB1cGRhdGVzIGluIFJGQy0xMTIzIHdlIGVuZCB1cCB3aXRoIHRoZSBmb2xsb3dpbmc6CjEuIExl
bmd0aCBpcyBub3cgb2YgNjMgY2hhcmFjdGVycyBtaW5pbXVtIChzdXBlcmNlZGluZyAyNCkuCjIu
IFRoZSBmaXJzdCBjaGFyYWN0ZXIgbXVzdCBiZSBhbiBhbHBoYSAob3IgbnVtZXJpYyAtIGFzIGFt
ZW5kZWQgYnkgUkZDIDExMjMpLgozLiBUaGUgbGFzdCBjaGFyYWN0ZXIgTVVTVCBOT1QgYmUgYSBt
aW51cyBzaWduIChmcm9tIFJGQyA5NTIgYW5kIGxlZnQgdW5jaGFuZ2VkKS4KClRoZXJlZm9yZSwg
dG8gYmUgYWNjdXJhdGUgd2l0aCB0aGUgc3RhbmRhcmQgeW91IGFyZSByZWZlcnJpbmcgdG8gKFJG
QyAxMTIzIGFuZCB0aGUgUkZDIGl0IHVwZGF0ZXMgOTUyKSwgSSBiZWxpZXZlIHlvdSBzaG91bGQg
aGF2ZToKCiJBIGhvc3RuYW1lIG1heSBub3Qgc3RhcnQgb3IgZW5kIHdpdGggYSBoeXBoZW4uIgoK
QWxsIG9mIHlvdXIgdGV4dCBpcyBpbiBoYXJtb255IHdpdGggUkZDIDk1MiBhbmQgUkZDIDExMjMg
ZXhjZXB0IGZvciB0aGUgaXNzdWUgcmVnYXJkaW5nIHRoZSBoeXBoZW5zIC0gYXQgbGVhc3QgZnJv
bSBteSByZWFkaW5nLgoKVGhhbmtzLgpHcmVnIE5laXR6ZXJ0CkdyZWcuTmVpdHplcnRAdW5pc3lz
LmNvbQoKCgoK

