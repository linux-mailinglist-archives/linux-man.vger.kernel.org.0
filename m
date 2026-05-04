Return-Path: <linux-man+bounces-5459-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGNlHpV7+GkUwAIAu9opvQ
	(envelope-from <linux-man+bounces-5459-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 12:57:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 750EB4BC078
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 12:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3DD873003BF8
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2026 10:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B9A391E57;
	Mon,  4 May 2026 10:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sap.com header.i=@sap.com header.b="pe+hVDb9"
X-Original-To: linux-man@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013047.outbound.protection.outlook.com [52.101.72.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AEA31326C
	for <linux-man@vger.kernel.org>; Mon,  4 May 2026 10:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777892239; cv=fail; b=VbSCekY1ReV5nYeoljn9EqeAMagy2rYUk9n+GyP/j+kZZ10yL+d7J2ISSgCqRXGxqyuzSrYkdUzSSjbyQRXuWE0shKUSxdDzFsINAw3NKo2PNTbO1WGJcpULR1TUxJQ2sDlGrLtGVGPbV4XOKVW4UM2MyFUvYB2nfUcA1L7nk2k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777892239; c=relaxed/simple;
	bh=l9ITcWcv+Sx4aWKob9MUtqm85pVvxRtWHNank7tIgzo=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ZH99E6bWfyPslKpqN1WQfevNzCR90435/5nJm+Men0b/HipDnIBScjxUFWju4w45duN9dd8/VgHtS3wS4fwffjxRtp+8IabmOQ7rMS9B01npzCmxt8ljDKkqUTAx95Z79hthGzDxX8675dChVY+wKSBciqk8R7TITi3RxZGCAQY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sap.com; spf=pass smtp.mailfrom=sap.com; dkim=pass (2048-bit key) header.d=sap.com header.i=@sap.com header.b=pe+hVDb9; arc=fail smtp.client-ip=52.101.72.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sap.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sap.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ONJkz7U7tKf9GeGKBHKfA2aOWoPM7GWU6KU2zrX3Tu1olRlMeo9FOfRFVjOBe8OgWKezgL04ZbfD/csJgerdV/HGNLSCCIDgjOa/sT8vPD+uAjemYXlGz6hNYZ6xSGYuozem3k97xzuAsEw6D+4w8J+t9bmO2xqMThueddjnyTJSo4nN95q1MWdrk6FZwUBdpj0285OQZggU7t/3h8DoIUVQJBuAjgGYzHwnwKZQvYt0fxq3y0oZaHZ3gDCIM+40bIQK6OalmmztUcat3pJBlYsxhOF9VLWgdT2VAts6kndmOUGl439/GhLMct4Aoe1gMglplTdQm61UySxlsrF3Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9ITcWcv+Sx4aWKob9MUtqm85pVvxRtWHNank7tIgzo=;
 b=f9YTrAFjF2E7LosSfRJXUyJmSEKSwvuGV7NRba0/bBrGLVGXXgqK4IgvvuJ5B7PsQz3TGs5OpeXxObMiaLGLYgiGRgzeFwoZk7Efx/EhV6w78q9HCLbrZzlvJLzr0E+9OUNzch7MVBZzdYL/vwb1Q3kZI552mEnp37V0ogPGb5EpRV0Y6kXSNjbe8yWAhxWTJQm6OWWjUEUlt39rttPV6J06cDnbl89KZjhKhz1CuIJgfsHApaCEsZ7reM0y0Vf/L70B7u41s5hAqElkIpf7dsNXYI1Ja2W4GNNZEL3EsZxDCGX+OYpL8W7OZDWFzlc9YvY0idezO3P0w8rbekk8CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sap.com; dmarc=pass action=none header.from=sap.com; dkim=pass
 header.d=sap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sap.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l9ITcWcv+Sx4aWKob9MUtqm85pVvxRtWHNank7tIgzo=;
 b=pe+hVDb9SD9I0Ek1nwKbVqulaHKbKEMj9CEAF2HVFLm9/kI5o0V6voszhDWCHuRxG6jzSrnW3YF+g4Y8cSzwavVjUSDJTQlH4DLIgYlsdpH1XPHV3X6OB4a+RaiPp0xBY4OjWWrE/HUE1yUROVp1TtPO/epK8we5wmlYg+hoQ6O3eyPdI4c7knQApPxO+TYbb1ueoLRVfRAiZGtFhZa7Sr95/w/jIPAjlOSZB0JhY51OPvERT2lQEjHqz+NFRTLbwBGHFyGCAAcBMkioAs0ybicchLCQjdB0I/QBJEGQLWmW2I7dF1zpEVYVWUF+k9MKBJh1Z6tVjpd9NjHF+ou04Q==
Received: from VI0PR02MB10873.eurprd02.prod.outlook.com
 (2603:10a6:800:204::16) by AS1PR02MB7942.eurprd02.prod.outlook.com
 (2603:10a6:20b:4a4::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 10:57:13 +0000
Received: from VI0PR02MB10873.eurprd02.prod.outlook.com
 ([fe80::e168:74a1:f841:e77]) by VI0PR02MB10873.eurprd02.prod.outlook.com
 ([fe80::e168:74a1:f841:e77%4]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 10:57:13 +0000
From: "Schneider, Robert" <robert.schneider03@sap.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: [PATCH v1] man/man2/perf_event_open.2: ffix
Thread-Topic: [PATCH v1] man/man2/perf_event_open.2: ffix
Thread-Index: AQHc27TDRff+O7estEeEeF++w2tiDg==
Date: Mon, 4 May 2026 10:57:13 +0000
Message-ID:
 <VI0PR02MB1087335B7BD1EAC7E8A617C968F312@VI0PR02MB10873.eurprd02.prod.outlook.com>
References:
 <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
 <afe3MfB6E5aT0LB-@devuan>
In-Reply-To: <afe3MfB6E5aT0LB-@devuan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sap.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0PR02MB10873:EE_|AS1PR02MB7942:EE_
x-ms-office365-filtering-correlation-id: 7a17ef67-f167-4c43-e2b1-08dea9cbe629
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info:
 yXoiPp+qslIIVyHSizbGPj4P1zYP30kOj0i2chlwczohCrf90A4/yjlf0jgIPYI9FyhfTg9Zt1nPNf9C6tjc18VC+1WXCa2EJOFuSByLJ9zIFppp/4sJ1S1VnyYxqwLalv35O7Lzwib0LGQkJqvbrRbQNRZd1eWzVTr3Cp4Ku7MjLZI51ddJee8sB8KNRIwrEzPvVtSDTS9llGdlI5Fhp92vOirhwn5P0OSGf7bUYymZRk4wM2mzde4t0UyKjXmlS/D9bxhDn6TNZCHeScvZZB+ZNpkOSl3mCWIVle72ZHogONeo0g4MJXLUHSjuKs8NVF9bNH1i6Gm5DW/sk4ANKcRc9refkEUD3M5LyJUCI19TjHfVOlQahS+5yvp2FLnyZHYziP4/tPadZJZrEc4h9tNANgL2gPhl5m9I9nLMBWINSRO+PCpXEAOOek1QVCtG5ebUL2BkHtpaz1ql/xLiKIRVdu9ZLyoYwtB1ihyzKhPUQywQcYz2IrHQGUrA1/UtGUdiFw9wrGsaA8psbxjKMWNqFDUX7m6stWZP4YEJ0dhYml+qfy5TU58Ujj2feNeVzKf1e6lYzn0IETcAhNqd6bh8V7HrH9qomaj6Lao8rdM9E3biZovtfoXVIXCPxVGX+LmA1VUaIpMKBu3UsTA7wKmuxXvfLi7yWOPb/mJ1R6Tu739culdBx+cjlm/y5yny
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR02MB10873.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?VTlmSDNJaDlvZDhqSUd0a2xDa01RWmRPTWgwZWVHbXUzUm1GVU1oMzZEc0F4?=
 =?utf-8?B?cklvdWJtUXR1TDRhU25IUGhCV1EvM05MSGRYTWI3bWdVWXF3czkxSkc4cDhY?=
 =?utf-8?B?VkhOeVVDaFNISEdac0FEaEhoM2xrajhMODYvOTFiUG0xYUVlZkR6Mnlac21W?=
 =?utf-8?B?Zm41bU5TZ1c1V25oVFJxRG5tcml3NG41aTFRTzZGYlFTQmdkNVVrY2JiYjAv?=
 =?utf-8?B?QU5HSFpTdVdaMytyc0dpSmY0MEJUV2syTHNwUzJyRXpVRWs3WGxiZDEwbkY3?=
 =?utf-8?B?VEhZRGtyb2pDeXRqODFwbFNFbThqM05OUytZTVp1YXd2dERuL1d4M1ZCbEky?=
 =?utf-8?B?bFVxb3NqY0p6ckpKYWo0YjgrU0hJMzNLbUtIRHVHazc1UlE1ZWNnMHdpbnR3?=
 =?utf-8?B?V1VZeHpkWkM4a3B6T1dtWDVlcWVZa1p4Y1NHNUJ3U0UzYngyZGQrT2ZSejFT?=
 =?utf-8?B?Z0N5dDRMTW9hdkVtS1B0TDFWRDJyZWI1RittWVpFSUlzVWZUeDVsb0NxcWRz?=
 =?utf-8?B?YUsrQkpnbjAwV2pPcitmNkdIM1VhaXNXRHBkcHlzZVdodmRncm10WSsyaDBL?=
 =?utf-8?B?ckx4d1ZUdm5sUVBJVHR0VVRSejE1eXE0YUhaYUJpYXpLTXJLaEFZbFZaS2lQ?=
 =?utf-8?B?UDYyVTZOaTBoWCtxSlI0eVVjNzcxbzlDNjNqc29yeGJ6MXJ5Njc2MEUxTGxO?=
 =?utf-8?B?VE55emVyNmhtWURTVDJ6Y2xVL0J1Q0V5ZUxCTnZ1amFrMCtBeGRvamhqM21w?=
 =?utf-8?B?enBFdGJuMGtMdStFR2ZMbjRsUkNxVWJpTGtlQjNEZld2dnVwWFovV01SeC8r?=
 =?utf-8?B?dUE2TFU3cGNIbXU2RUFPNi8rQ0txbWhTcTNndnphTjNzVVJPQ0VDdzBSWmo4?=
 =?utf-8?B?VHpHK0dUZ3p3eWhMTVpVYlJZeG41eUkxOVB2Y0s0Nk9KWnBhUnpSOW1vS25I?=
 =?utf-8?B?UHlyVFU0T2ZUaW9jL3c4azF3OG5ZdnVYYnNoRVVxanQyVk90L1lyOVNOdXRQ?=
 =?utf-8?B?c0Q5UjExM0N4NjUrVTJoZk5mMFVUUmxUclhaV2tZY0JjUkJlVkVoaUZTdWND?=
 =?utf-8?B?WWxxb2FyUmM3ZXZLUENMR1VTaFRrVXZOd29Bb3h5enlHY2hYNWtHN2RKTkRQ?=
 =?utf-8?B?YmVXMjhKSHdMYUxlSjRCS0NMOU52Wkh4aU4xRXUxWHU2dk9FVEUyL3YzYXV0?=
 =?utf-8?B?ZlJ5b2w3TmQyRHQ1YXV2NUx1R3FLbytJUWVBYUFyY2VhSldqOGExTzlnUlRk?=
 =?utf-8?B?bXFKTlFXaHlhUjZDak5ZTG8wbzZEZGhSTlc3N0dHU3JkKy90OFZUeUhOUCs4?=
 =?utf-8?B?T2JrK0ZXM0UzRURCblpreDFseCt4STFiSEloZUJpSHkxMmF1MjFFV21ubS9Y?=
 =?utf-8?B?MmtzMTJlOUtJN25ielJLRlpqckdrbXpmYmNWd2VUMjFlS2RhaHY5WjRIcVhX?=
 =?utf-8?B?RFYyNFlUZmtKZ0R6eWxNODVRaHYvK01OUUVjajQwVFpxNU1ibGRSc1JMK0pv?=
 =?utf-8?B?QTFncjloc21QK0U5VU9YbmxYSzhzSkxPSEIzRzFHbkZnTVozRHFiZGVJbERI?=
 =?utf-8?B?YW54eW1KbHdmRkMrVU9vUFJzUW05SEZQVjBlbkZEUlhZaHNHendwN3o3TS9K?=
 =?utf-8?B?eFNTaGhOMnQ5aUZLbUVHRG5ldWlzOE1vUGdWUEZhcHp2TTBjaldLa2tGQnVO?=
 =?utf-8?B?VW84UHlja2IzaUk1YkNjOW8rT3BhT3JXVEZqNEtlSTlFU0hFQW84R2wwM1ZD?=
 =?utf-8?B?Tno5cjd4RkpIcVNxNnJ0ekFRbDRDY1hNRExvVE01bGFMbVpReEVIRGIxQldq?=
 =?utf-8?B?ZjJVemZoWkxqM2ZrcERCNTlsMG5lZFpveDNkU09JQ3BJWUovUHZuUWZPMWlu?=
 =?utf-8?B?UTIwWm9zN256RmJiSThqS0VMNlJHOWhWdU5UZnVIdE5wMmg4UHdOdnJJMFpu?=
 =?utf-8?B?YThEeFBJMTJkYkh5Tm53UlZTS3ZNOW00NmRxVkpLeUtoV3NHWVZpNktXcEcy?=
 =?utf-8?B?TEV5N0F1OUdHcEhsNE1IWE53WXhpV0pzY3hFVW1GaGxlclI0Q2FnM09mRkVZ?=
 =?utf-8?B?R0JBSXJRazRxaFNnREZxSUJmNkVPWktjMHFDbHM0Uk5RZElQdVpBclEwbDZS?=
 =?utf-8?B?akNSSzJ4L0ZWTk9BYkFDb0dpdXRjOE9sekhtMlpuc1JiODYzQVo1Q05HbVpl?=
 =?utf-8?B?cDVNYXErb1VXOHI1eWw4L0tiMFFGWUcvZ1pPa2dCTUxkK1E3dXBMOXZHdWRN?=
 =?utf-8?B?T2lKdll5NHBoMnVUd1dmWCtzZDNkK3JzQW1qZGxxZ1BDSlBoR21teGh0Z0dq?=
 =?utf-8?B?UUlLN0dtTjdPVEhWYkRHREJ3TzN2S0oySjdoL016MFlHU09rTGRRQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: sap.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI0PR02MB10873.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a17ef67-f167-4c43-e2b1-08dea9cbe629
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 10:57:13.7600
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 42f7676c-f455-423c-82f6-dc2d99791af7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u1vT+Pn5jZhlTfg05HYzxgCAaSokQAgWqe2nCosh1dnxSUVhOUEK29GrZnkcy/mHBQ+PwcJxN/SdbNwIGxN5otU0+qbqFEBC3efgHV52rZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR02MB7942
X-Rspamd-Queue-Id: 750EB4BC078
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[sap.com,reject];
	R_DKIM_ALLOW(-0.20)[sap.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5459-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.schneider03@sap.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[sap.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sap.com:dkim,sap.com:email,alejandro-colomar.es:url]

SGkgQWxleCwNCg0KVGhhbmtzIGZvciB5b3VyIGhpbnRzIGFuZCBsaW5rcyEgQW5kIGZvciBiZWlu
ZyBraW5kIGV2ZW4gdGhvdWdoIHlvdSBoYXZlIGV2ZXJ5dGhpbmcgZG9jdW1lbnRlZCDwn5iKDQpJ
IGJyb2tlIG15IG1hY2hpbmUgc28gSSBoYWQgdG8gcmVjb25maWd1cmUgZ2l0IGV0Yy4sIEkgaG9w
ZSB0aGF0IEkgZGlkIG5vdCBmb3JnZXQgYW55dGhpbmcuDQoNClJvYmVydA0KDQotLS0tLS0tLS0N
Cg0KRml4ZXMgLlRQIGxpc3QgZm9yIFBFUkZfU0FNUExFX0JSQU5DSF9DQUxMX1NUQUNLLg0KDQpG
aXhlczogYmI3ZTZmZjAgKDIwMTUtMDctMjM7ICJwZXJmX2V2ZW50X29wZW4uMjogNC4xIFBFUkZf
U0FNUExFX0JSQU5DSF9DQUxMX1NUQUNLIikNClNpZ25lZC1vZmYtYnk6IFJvYmVydCBTY2huZWlk
ZXIgPHJvYmVydC5zY2huZWlkZXIwM0BzYXAuY29tPg0KLS0tDQogbWFuL21hbjIvcGVyZl9ldmVu
dF9vcGVuLjIgfCAxICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlmZiAt
LWdpdCBhL21hbi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yIGIvbWFuL21hbjIvcGVyZl9ldmVudF9v
cGVuLjINCmluZGV4IGRmMGExOTllLi5hZTU4ODQ1MSAxMDA2NDQNCi0tLSBhL21hbi9tYW4yL3Bl
cmZfZXZlbnRfb3Blbi4yDQorKysgYi9tYW4vbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KQEAgLTE1
NDcsNiArMTU0Nyw3IEBAIC5TUyBBcmd1bWVudHMNCiAuQlIgUEVSRl9TQU1QTEVfQlJBTkNIX05P
X1RYICIgKHNpbmNlIExpbnV4IDMuMTEpIg0KIC5cIiBjb21taXQgMTM1YzU2MTJjNDYwZjg5NjU3
YzQ2OThmZTJlYTc1M2Y2ZjY2Nzk2Mw0KIEJyYW5jaCBub3QgaW4gdHJhbnNhY3Rpb25hbCBtZW1v
cnkgdHJhbnNhY3Rpb24uDQorLlRQDQogLkJSIFBFUkZfU0FNUExFX0JSQU5DSF9DQUxMX1NUQUNL
ICIgKHNpbmNlIExpbnV4IDQuMSkiDQogLlwiIGNvbW1pdCAyYzQ0YjE5MzZiYjNiMTM1YTNmYWM4
YjM0OTMzOTRkNDJlNTFjZjcwDQogQnJhbmNoIGlzIHBhcnQgb2YgYSBoYXJkd2FyZS1nZW5lcmF0
ZWQgY2FsbCBzdGFjay4NCi0tDQoyLjQzLjANCg0KUm9iZXJ0IFNjaG5laWRlciAoMSk6DQogIG1h
bi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yOiBmZml4DQoNCiBtYW4vbWFuMi9wZXJmX2V2ZW50X29w
ZW4uMiB8IDEgKw0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KDQpSYW5nZS1kaWZm
IGFnYWluc3QgdjE6DQoxOiAgYmMzMDA5NmEgISAxOiAgZjJjMjQ3ZDEgW1BBVENIXSBtYW4vbWFu
Mi9wZXJmX2V2ZW50X29wZW4uMjogZmZpeA0KICAgIEBAIE1ldGFkYXRhDQogICAgIEF1dGhvcjog
Um9iZXJ0IFNjaG5laWRlciA8cm9iZXJ0LnNjaG5laWRlcjAzQHNhcC5jb20+DQoNCiAgICAgICMj
IENvbW1pdCBtZXNzYWdlICMjDQogICAgLSAgICBbUEFUQ0hdIG1hbi9tYW4yL3BlcmZfZXZlbnRf
b3Blbi4yOiBmZml4DQogICAgKyAgICBbUEFUQ0ggdjFdIG1hbi9tYW4yL3BlcmZfZXZlbnRfb3Bl
bi4yOiBmZml4DQoNCiAgICAgICAgIEZpeGVzIC5UUCBsaXN0IGZvciBQRVJGX1NBTVBMRV9CUkFO
Q0hfQ0FMTF9TVEFDSy4NCg0KICAgICsgICAgRml4ZXM6IGJiN2U2ZmYwICgyMDE1LTA3LTIzOyAi
cGVyZl9ldmVudF9vcGVuLjI6IDQuMSBQRVJGX1NBTVBMRV9CUkFOQ0hfQ0FMTF9TVEFDSyIpDQog
ICAgICAgICBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgU2NobmVpZGVyIDxyb2JlcnQuc2NobmVpZGVy
MDNAc2FwLmNvbT4NCg0KICAgICAgIyMgbWFuL21hbjIvcGVyZl9ldmVudF9vcGVuLjIgIyMNCi0t
DQoyLjQzLjANCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQWxlamFuZHJv
IENvbG9tYXIgPGFseEBrZXJuZWwub3JnPiANClNlbnQ6IFN1bmRheSwgMyBNYXkgMjAyNiAyMzow
MQ0KVG86IFNjaG5laWRlciwgUm9iZXJ0IDxyb2JlcnQuc2NobmVpZGVyMDNAc2FwLmNvbT4NCkNj
OiBsaW51eC1tYW5Admdlci5rZXJuZWwub3JnDQpTdWJqZWN0OiBSZTogW1BBVENIXSBtYW4vbWFu
Mi9wZXJmX2V2ZW50X29wZW4uMjogZmZpeA0KDQpIaSBSb2JlcnQsDQoNCk9uIDIwMjYtMDQtMjlU
MTc6MzU6MzArMDAwMCwgU2NobmVpZGVyLCBSb2JlcnQgd3JvdGU6DQo+IEZpeGVzIC5UUCBsaXN0
IGZvciBQRVJGX1NBTVBMRV9CUkFOQ0hfQ0FMTF9TVEFDSy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFJvYmVydCBTY2huZWlkZXIgPHJvYmVydC5zY2huZWlkZXIwM0BzYXAuY29tPg0KDQpXb3VsZCB5
b3UgbWluZCBhZGRpbmcgYSAnRml4ZXM6JyB0YWc/DQoNClNlZSA8aHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvdHJlZS9DT05UUklCVVRJ
TkcuZC9wYXRjaGVzL3RyYWlsZXIjbjE2Pg0KYW5kIDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC90cmVlL0NPTlRSSUJVVElORy5kL2dp
dCNuNDY+Lg0KDQoNCkhhdmUgYSBsb3ZlbHkgbmlnaHQhDQpBbGV4DQoNCj4gLS0tDQo+ICBtYW4v
bWFuMi9wZXJmX2V2ZW50X29wZW4uMiB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuL21hbjIvcGVyZl9ldmVudF9vcGVuLjIgYi9t
YW4vbWFuMi9wZXJmX2V2ZW50X29wZW4uMiANCj4gaW5kZXggZGYwYTE5OWUuLmFlNTg4NDUxIDEw
MDY0NA0KPiAtLS0gYS9tYW4vbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KPiArKysgYi9tYW4vbWFu
Mi9wZXJmX2V2ZW50X29wZW4uMg0KPiBAQCAtMTU0Nyw2ICsxNTQ3LDcgQEAgLlNTIEFyZ3VtZW50
cw0KPiAgLkJSIFBFUkZfU0FNUExFX0JSQU5DSF9OT19UWCAiIChzaW5jZSBMaW51eCAzLjExKSIN
Cj4gIC5cIiBjb21taXQgMTM1YzU2MTJjNDYwZjg5NjU3YzQ2OThmZTJlYTc1M2Y2ZjY2Nzk2Mw0K
PiAgQnJhbmNoIG5vdCBpbiB0cmFuc2FjdGlvbmFsIG1lbW9yeSB0cmFuc2FjdGlvbi4NCj4gKy5U
UA0KPiAgLkJSIFBFUkZfU0FNUExFX0JSQU5DSF9DQUxMX1NUQUNLICIgKHNpbmNlIExpbnV4IDQu
MSkiDQo+ICAuXCIgY29tbWl0IDJjNDRiMTkzNmJiM2IxMzVhM2ZhYzhiMzQ5MzM5NGQ0MmU1MWNm
NzANCj4gIEJyYW5jaCBpcyBwYXJ0IG9mIGEgaGFyZHdhcmUtZ2VuZXJhdGVkIGNhbGwgc3RhY2su
DQo+IA0KPiBSYW5nZS1kaWZmIGFnYWluc3QgdjA6DQo+IC06ICAtLS0tLS0tLSA+IDE6ICBkNTk3
ZGM5OCBtYW4vbWFuMi9wZXJmX2V2ZW50X29wZW4uMjogZmZpeA0KPiAtLQ0KPiAyLjUxLjANCg0K
LS0NCjxodHRwczovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcz4NCg==

