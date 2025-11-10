Return-Path: <linux-man+bounces-4278-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C83C45456
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 08:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27242188528B
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 07:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94CE82F3626;
	Mon, 10 Nov 2025 07:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.com header.i=teika@gmx.com header.b="Y8okH1Y+"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA542F39A2
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762761398; cv=none; b=IPCClmosL2RhPDPVZAX9htih9YyJzwOrTZbFAjwt6aBE4DCiKZmQL03egoia6Q8NuKBvmozY6RzvazVhmIGI4jDv+3gsb3cdzsdo5WYyqwdw6kcW2YdNbzLfZouZ+K1/dTa9aTWegX58DuSx4SzFgaWBULndWrdMXPEXgbwIYQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762761398; c=relaxed/simple;
	bh=RefFcyzILIE39DoOiMFOfLjbIPYkDN9El1cWDXzpTS0=;
	h=Date:Message-Id:To:Cc:Subject:From:Mime-Version:Content-Type; b=IpXdBo9h7BIcgbzMqrXB3sfHmFy3bhWmKQKMZPN9kTOW8v7gbdrB2VLv5VFfDkKCp2XmtJrbWvCgzKmduEI0oKnVFx4SozPbVScq9OGYwy8EhWtHZ/3wHQ20s6V8ah3ObPHX7QY4dZSlrZNKqZuujOjb49caTs3C1KUaqlBXw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.com; spf=pass smtp.mailfrom=gmx.com; dkim=pass (2048-bit key) header.d=gmx.com header.i=teika@gmx.com header.b=Y8okH1Y+; arc=none smtp.client-ip=212.227.17.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1762761391; x=1763366191; i=teika@gmx.com;
	bh=zGv18hmeWWGVghSnJgT72MKpzGNPJM8HSijDZAdn1Fc=;
	h=X-UI-Sender-Class:Date:Message-Id:To:Cc:Subject:From:
	 Mime-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Y8okH1Y+WAzxmd8dUNtgZWvALjf5I89tFlKn9yf+KWoxynqvrq5nSlgm7d9U9qqB
	 wfjmOK1N6QH++m3z6HaaD/E93PgNqgcwVj9hAC7M1Cy5CK1wKU95UldCCxegpdWYP
	 qiTebR1jXR+Fh/quEdmpEK43J060MvcPx8IqB8ktl9RevXHzG2WmkZrnlWG6GH5Rv
	 GJgVxrOmOxDb1+RsSE1OGVu6ejY/hLuuj6vBuC8rav8h125Zi8q/anQoa19X75f8o
	 l6WBr7Bkc9IBoKlgInETQc6HUIZOrp2yz9H4WSd8hRKAlPhX3aWSE+hKHtV0QSst0
	 yU3EhwkRnI6FlwDjaQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost ([180.15.141.137]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1ML9uU-1vaa8S2JbG-00RzMZ; Mon, 10
 Nov 2025 08:56:31 +0100
Date: Mon, 10 Nov 2025 16:56:18 +0900 (JST)
Message-Id: <20251110.165618.2111633615163528521.teika@gmx.com>
To: Alejandro Colomar <alx@kernel.org>, Teika Kazura <teika@gmx.com>
Cc: <linux-man@vger.kernel.org>
Subject: [Patch v2 0/1] man/man2/ioctl_vt.2: Various improvements.
From: Teika Kazura <teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: Multipart/Mixed;
 boundary="--Next_Part(Mon_Nov_10_16_56_18_2025_022)--"
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:FgbuzBUAOUAMthhvsS3JuzuUXI28uXKQezBxzmMP6w7Vq4GexXc
 4UbYt26czlJxcVhNbIQxMFk42IqFikIneIZ0J7PMdaYkuIB9jeXd+t1x5SWxXlKbLzxRYaI
 v/TR+QwJ2Zr5YUjrwUKlKIHc/CpEJZYUr8yiZYzW3KRM8XneiMP9Pk2FqmC7McHhtb2ZfOh
 dtKMWLBVPej8aLUu9eKiQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:MuWkkyZVTPM=;Vik5un92oHPP4C9E93bv9eOTmn3
 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

----Next_Part(Mon_Nov_10_16_56_18_2025_022)--
Content-Type: Text/Plain; charset=utf-8
Content-Transfer-Encoding: base64

KHYxIHdhcyBwb3N0ZWQgb25seSBvbiBidWd6aWxsYSBhdCBodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTIyMDcyNiAuKQ0KDQpUaGlzIHBhdGNoIGltcHJvdmVzIG1h
bi9tYW4yL2lvY3RsX3Z0LjIuIFByb2JhYmx5IHlvdSB3YW50IHRvIGZpcnN0IHJlYWQgdGhlIG5l
eHQgZW1haWwsIHdoaWNoIGluY2x1ZGVzIHRoZSBhY3R1YWwgcGF0Y2ggYW5kIGl0cyBkZXNjcmlw
dGlvbi4NCg0KVGhpcyBpbnN0YWxsbWVudCBleHBsYWlucyB0aGUgZnVsbCBkZXRhaWxzLiBJIGF0
dGFjaGVkIHR3byBweXRob24gY29kZXMsICJzZXRtb2RlLnB5IiBhbmQgIndhaXQtYWN0aXZlLnB5
IiB0aGF0IEkgdXNlZCB0byBpbnZlc3RpZ2F0ZSB0aGUgYmVoYXZpb3IuIFRoZSByZWxldmFudCBz
b3VyY2UgaXMgdGhlIHNpbmdsZSBmaWxlIDxrZXJuZWwgcm9vdD4vZHJpdmVycy90dHkvdnQvdnRf
aW9jdGwuYyAuDQoNClRoZSBtYWluIGNoYW5nZXMgYXJlIGFib3V0IFZUX1NFVE1PREUgYW5kIGEg
cmVsYXRlZCBjYWxsIFZUX1JFTERJU1AuIHNldG1vZGUucHkgaXMgdXNlZCB0byB2ZXJpZnkgbXkg
Y2xhaW1zLiAgQmFzaWNhbGx5IHlvdSBoYXZlIHRvIHJ1biBpdCBhcw0KJCAuL3NldG1vZGUucHkg
L2Rldi90dHlODQpvbiBOLXRoIFZULiBTd2l0Y2ggdG8gZS5nLiBWVDIgYnkgcHJlc3NpbmcgQWx0
K0YyLiBUaGUgY29kZSBhbGxvd3MgaXQsIGJ1dCB5b3Ugd2lsbCBoYXZlIHRvIHdhaXQgZm9yIGEg
c2Vjb25kLg0KDQpJdCBwcmludHMgaXRzIHBpZCwgYW5kIG1lc3NhZ2VzIG9uIFZUIHJlbGVhc2Uv
YWNxdWlzaXRpb24uDQoNCkhlcmUgSSBsaXN0IHRoZSBjaGFuZ2VzOg0KDQoxLiBBZGRlZCB0aGlz
OiBGb3IgbWFueSBpb2N0bHMgdGhlIGZpcnN0IGFyZ3VtZW50IG9mIGlvY3RsIChjYWxsIGl0IGZk
LCB0aGUgZmlsZSBkZXNjcmlwdG9yKSBoYXMgdG8gcG9pbnQgdG8gdGhlIGFjdGl2ZSBWVCwgYW5k
IHRoZSB1c2VyIGhhcyB0byBvd24gaXQuIEZ1cnRoZXJtb3JlIGl0IHNob3VsZCBub3QgYmUgcnVu
bmluZyBYIG9yIFdheWxhbmQuIFRoZSBzdXBlcnVzZXIgaXMgZXhlbXB0IGZyb20gdGhlc2UgIHJl
c3RyaWN0aW9ucy4NCg0KSW4gdGhlIHNvdXJjZSwgdGhpcyBpcyBjaGVja2VkIGJ5IHNldHRpbmcg
dGhlIHZhcmlhYmxlICJwZXJtIiBpbiB2dF9pb2N0bCgpLiBOb3QgYWxsIGlvY3RscyBjaGVjayBw
ZXJtLCBzbyBJIHdyb3RlIGluIHRoZSBwYXRjaCAiRm9yIG9wZXJhdGlvbnMgZm9yIHdoaWNoIGZk
IGlzIHJlbGV2YW50Ii4NCg0KSSBjb25maXJtIHRoaXMgYnkgaGF2aW5nIGNhbGxlZCBzZXRtb2Rl
LnB5IGluIHZhcmlvdXMgVlRzLg0KDQoyLiBJbiB0aGUgY3VycmVudCB2ZXJzaW9uIFZUX0FDS0FD
USBpcyBkZXNjcmliZWQgaW4gcGFyYWxsZWwgd2l0aCBWVF9BVVRPIGFuZCBWVF9QUk9DRVNTIHVu
ZGVyIHRoZSBlbnRyeSBvZiBWVF9HRVRNT0RFLiBTbyBpdCBsb29rcyBsaWtlIGFuIG9wdGlvbiBv
ZiB0aGUgbW9kZS4gSW4gZmFjdCBpdCBpcyBhbiBhcmd1bWVudCBmb3IgVlRfUkVMRElTUC4gSSBm
aXhlZCB0aGlzLiBJdCBpcyBjbGVhciBmcm9tIHRoaXMgY29kZSAoSSBtb2RpZmllZCB3aGl0ZXNw
YWNlcyk6DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAgY2FzZSBWVF9TRVRNT0RFOg0KICB7DQogICAgIC8v
IC4uLg0KICAgICBpZiAodG1wLm1vZGUgIT0gVlRfQVVUTyAmJiB0bXAubW9kZSAhPSBWVF9QUk9D
RVNTKQ0KCXJldHVybiAtRUlOVkFMOw0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpTbyB0aGUgbW9kZSBoYXMg
dG8gYmUgZWl0aGVyIFZUX0FVVE8gb3IgVlRfUFJPQ0VTUy4NCg0KT2YgY291cnNlIHlvdSBjYW4g
Y2hlY2sgdGhpcyB3aXRoIG15IGNvZGUuIChCdXQgeW91IGhhdmUgdG8gbW9kaWZ5IGl0IGJ5IGhh
bmQuKQ0KDQozLiBQcmVsaW1pbmFyeTogSW4gdGhlIFZUX1BST0NFU1MgbW9kZSwgc2lnbmFscyBh
cmUgc2VudCB0byB0aGUgY2FsbGVyIHByb2Nlc3Mgd2hlbiBWVCByZWxlYXNlIGlzIHJlcXVlc3Rl
ZCBvciBhcXVpcmVkLiBSb3VnaGx5IHNwZWFraW5nLCBpdCByZWdpc3RlcnMgY2FsbGJhY2tzIG9m
IFZUIHN3aXRjaGluZy4NCg0KV2hlbiB0aGUgdnQgbW9kZSBpcyBzZXQgdG8gVlRfUFJPQ0VTUyBi
eSB0aGUgY2FsbCBvZiBWVF9TRVRNT0RFLCBWVF9SRUxESVNQIGhhcyB0byBiZSBjYWxsZWQgdG8g
YWxsb3cgdGhlIFZUIHN3aXRjaGluZy4gVGhpcyBwb2ludCB3YXMgbm90IGNsZWFyLg0KDQpNb3Jl
IHByZWNpc2VseSwgdW50aWwgaXQgaXMgY2FsbGVkLCBWVCBzd2l0Y2hpbmcgZG9lcyBub3QgaGFw
cGVuIGFuZCB0aGUgcHJvY2VzIHRoYXQgcmVxdWVzdGVkIGEgc3dpdGNoIGlzIGJsb2NrZWQuIE15
IGNvZGUgZGVtb25zdHJhdGVzIHRoaXMgYnkgY2FsbGluZyAic2xlZXAoMSkiIGJlZm9yZSBjYWxs
aW5nIFZUX1JFTERJU1AuDQoNCjQuIE15IGNvZGUgYWxsb3dzIHZ0IHN3aXRjaGluZywgYnV0IGl0
IGlzIGFsc28gcG9zc2libGUgdG8gcmVmdXNlIFZUIHJlbGVhc2UgYnkgY2FsbGluZyBWVF9SRUxE
SVNQIHdpdGggdGhlIGFyZ3VtZW50IDAuIEluIHNldG1vZGUucHksIGl0IGlzIGhhcmRjb2RlZCwg
c28gdG8gdmVyaWZ5IGl0LCBtb2RpZnkgaXQgbWFudWFsbHkuIChTZWFyY2ggZm9yIHRoZSB3b3Jk
ICJyZWZ1c2UiLikNCg0KNS4gSXQgd2FzIG5vdCB3cml0dGVuIHRoYXQgbXVsdGlwbGUgY2FsbHMg
b2YgVlRfUFJPQ0VTUyBvbiBvbmUgVlQgbnVsbGlmaWVzIHByZXZpb3VzIGNhbGxzIG9mIFZUX1NF
VE1PREUuDQoNClRoaXMgY2FuIGJlIGNoZWNrZWQgYnkgY2FsbGluZyBzZXRtb2RlLnB5IHR3aWNl
IChGaXJzdCBvbmUgaW4gYmFja2dyb3VuZCwgdGhlbiB0aGUgc2Vjb25kIG9uZS4pIFlvdSBjYW4g
c2VlIHRoZSBmaXJzdCBvbmUgaXMgZm9yZ290dGVuLg0KDQpTbyB0aGUgZGVzaWduIGlzIHF1aXRl
IGZsYXdlZC4gSXQgc2Vlc21zIFZUX1NFVE1PREUgd2FzIG9yaWdpbmFsbHkgaW50ZW5kZWQgZm9y
IFggc2VydmVyLiAoSXQgaXMgdXNlZCBieSBXYXlsYW5kIHRvbywgb3IgbW9yZSBwcmVjaXNlbHkg
aXQgaXMgdXNlZCBpbiB0aGUgcGFja2FnZSAic2VhdGQiLikgU28gSSBhZGRlZCB0aGUgY2F2ZWF0
IHRoYXQgVlRfU0VUTU9ERSBzaG91bGQgbm90IGJlICBjYWxsZWQgdW5sZXNzIHlvdSBhcmUgc3Vy
ZS4NCg0KQlRXIGluIFhvcmcgc291cmNlLCBWVF9TRVRNT0RFIGlzIGNhbGxlZCBpbiB0aGUgdGhl
IGNvZGVzIGZvciBMaW51eCwgYnNkLCBhbmQgU29sYXJpcy4gU28gaXQgbXVzdCBiZSBxdWl0ZSBh
bmNpZW50Lg0KDQo2LiBXaGVuIHRoZSBjYWxsZXIgcHJvY2VzcyBvZiBWVF9TRVRNT0RFIGlzIGFs
cmVhZHkgZGVhZCBvbiB2dCBzd2l0Y2hpbmcsIHRoZSBzeXN0ZW0gd29uJ3QgaGFuZ+KAlHNlZSB0
aGlzIGNvbW1lbnQgaW4gdGhlIHNvdXJjZSwgdW5kZXIgY2hhbmdlX2NvbnNvbGUoKToNCg0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQogICogVGhlIGNvbnRyb2xsaW5nIHByb2Nlc3MgaGFzIGRpZWQsIHNvIHdl
IHJldmVydCBiYWNrIHRvDQogICogbm9ybWFsIG9wZXJhdGlvbi4NCiAgKiAuLi4NCiAgKiBpdCBz
YXZlcyB0aGUgYWdvbnkgd2hlbiB0aGUgWCBzZXJ2ZXIgZGllcyBhbmQgdGhlIHNjcmVlbg0KICAq
IHJlbWFpbnMgYmxhbmtlZCBkdWUgdG8gS0RfR1JBUEhJQ1MhDQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCllv
dSBjYW4gYWxzbyBjaGVjayB0aGlzIGJ5IGNhbGxpbmcgc2V0bW9kZS5weSwga2lsbCBpdCwgYW5k
IGNoYW5nZSBWVC4NCg0KNy4gVGhpcyBtaWdodCBiZSB0b28gZGV0YWlsZWQsIGJ1dCBJIGNob3Nl
IHRvIG1lbnRpb24uDQoNCkl0IGlzIGFsc28gcG9zc2libGUgdG8gY2FsbCBWVF9SRUxESVNQIChj
b250cmFyeSB0byB0aGUgbmFtZSkgb24gYSBWVCBhY3F1aXN0aW9uIGV2ZW50LiBJbiB0aGF0IGNh
c2UsIHRoZSB0aGlyZCBhcmd1bWVudCBoYXMgdG8gYmUgVlRfQUNLQUNROyBvdGhlcndpc2UgRUlO
VkFMIHdpbGwgYmUgcmV0dXJuZWQuIEFDS0FDUSBzdGFuZHMgZm9yICJBQ0tub3dsZWRnZSBBQ1F1
aXNpdGlvbiIgSSBndWVzcy4NCg0KV2FpdC4gWW91J2xsIGdldCBFSU5WQUwgdW5sZXNzIHlvdSBh
Y2tub3dsZWRnZT8gU28gQUNLQUNRIGlzIHRoZSBvbmx5IG9wdGlvbi4gSXMgaXQgbWVhbmluZ2Z1
bD8NCg0KSW4gZmFjdCB0aGVyZSdzIG5vIGRpZmZlcmVuY2UgYmV0d2VubiBWVF9BQ0tBQ1EgYW5k
IG90aGVyIHZhbHVlcywgYmV5b25kIGVycm5vIGlzIHNldC4gU2VlIHRoZSBzb3VyY2U6DQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCnN0YXRpYyBpbnQgdnRfcmVsZGlzcChzdHJ1Y3QgdmNfZGF0YSAqdmMsIHVu
c2lnbmVkIGludCBzd3RjaCkNCnsNCiAgIC8vIC4uLg0KICAgaWYgKHZjLT52dF9uZXd2dCA8IDAp
IHsNCiAgICAgLyogSWYgaXQncyBqdXN0IGFuIEFDSywgaWdub3JlIGl0ICovDQogICAgIHJldHVy
biBzd3RjaCA9PSBWVF9BQ0tBQ1EgPyAwIDogLUVJTlZBTDsNCiAgIH0NCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KVGhlIGlmLXN0YXRlbWVudCBjaGVja3MgaWYgaXQncyBhbiBhY3F1aXN0aW9uIGV2ZW50Lg0K
DQpTbyB0aGlzIGRpZmZlcmVuY2UgaXMgc3VwZXJmaWNpYWwuIFJhdGhlciBjYWxsaW5nIFZUX1JF
TERJU1Agb24gdnQgYWNxdWlzaXRpb24gaXMgdG90YWxseSBtZWFuaW5nbGVzcyB0b2RheS4gSW4g
c2V0bW9kZS5weSwgaXQgaXMgY29tbWVudGVkIG91dDoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KICAgIyBy
ZWxlYXNlX2Rpc3BsYXkodHR5X2ZkLCBWVF9BQ0tBQ1EpDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCmJ1dCB0
aGVyZSdzIG5vIHByb2JsZW0uIFlvdSBjYW4gb2YgY291cnNlIGNhbGwgaXQgdG8gZ2V0IG5vdGhp
bmcsIG9yIHNldCBWVF9BQ0tBQ1EgKyAxLCB0byBoYXZlIGVycm5vIHNldC4gQW55d2F5IHRoZXJl
J3Mgbm8gZGlmZmVyZW5jZS4NCg0KUHJvYmFibHkgaW4gYW5jaWVudCB0aW1lIGl0IHdhcyBtZWFu
aW5nZnVsLiBPciBtYXliZSBpdCB3YXMgaW1wbGVtZW50ZWQgc28gdGhhdCBpdCB3b3VsZCBoZWxw
LCByYXRoZXIgdGhhbiBsYWNraW5nLg0KDQpUb2RheSBYb3JnIGFuZCBzZWF0ZCBzdGlsbCBkb2Vz
IEFDS0FDUS4gKFNlZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy94c2VydmVy
Ly0vYmxvYi9tYXN0ZXIvaHcveGZyZWU4Ni9vcy1zdXBwb3J0L3NoYXJlZC9WVHN3X3VzbC5jIGFu
ZCBodHRwczovL2dpdC5zci5odC9+a2VubnlsZXZpbnNlbi9zZWF0ZC90cmVlL21hc3Rlci9pdGVt
L2NvbW1vbi90ZXJtaW5hbC5jKSBJbiB0aGUgZG9jIHRpdGxlZCAiVW5kZXJzdGFuZGluZyB0aGUg
TGludXggR3JhcGhpY3MgU3RhY2sgdHJhaW5pbmciLCBodHRwczovL2Jvb3RsaW4uY29tL2RvYy90
cmFpbmluZy9ncmFwaGljcy9ncmFwaGljcy1zbGlkZXMucGRmICgyNS0xMS0wNyB2ZXIpIG9uIHAg
MTMwIGl0IHNheXMgIkZhaWx1cmUgdG8gYWNrbm93bGVkZ2Ugd2lsbCBjYXVzZSBhIHN5c3RlbSBo
YW5nIi4gRm9yIFZUIGFjcXVpc3Rpb24sIGFzIEkgc2FpZCwgaXQgZG9lcyBub3QuDQoNCkkgYWxz
byBtZW50aW9uZWQgdGhpcyBwb2ludC4NCg0KOC4gSW4gVlRfU0VUTU9ERSwgdGhlIGFyZ3VtZW50
IHN0cnVjdHVyZSBoYXMgdGhlIG1lbWJlciAid2FpdHYiLiBJdHMgY29tbWVudCBzYXlzICJpZiBz
ZXQsIGhhbmcgb24gd3JpdGVzIGlmIG5vdCBhY3RpdmUiLiBIb3dldmVyIGluIHRoZSBzb3VyY2Us
IGl0IGFwcGVhcnMgb25seSBvbmNlOg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQp2b2lkIHJlc2V0X3ZjKHN0
cnVjdCB2Y19kYXRhICp2YykNCnsNCiAgLi4uDQogIHZjLT52dF9tb2RlLndhaXR2ID0gMDsNCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KSSBjaGVja2VkIGFsbCBmaWxlcyBpbiBkcml2ZXJzL3R0eS8sIGJ1dCB0
aGlzIGlzIGFsbC4gU28gSSB3cm90ZSAidW51c2VkIChzZXQgdG8gMCkiLg0KDQo5LiBQaGV3LiBU
aGF0J3MgYWxsIGZvciBWVF9TRVRNT0RFIGFuZCBjby4NCg0KSW4gdGhlIGN1cnJlbnQgdmVyc2lv
biwgdGhlIHRoaXJkIGFyZ3VtZW50IGlzICJ2b2lkICoiLiBJbiBmYWN0IGZvciBzb21lIGNhbGxz
IChpbmNsdWRpbmcgVlRfUkVMRElTUCkgaXQncyBhbiB1bnNpZ25lZCBsb25nIGludGVnZXIuIEkg
bWVudGlvbmVkIHRoaXMgdG9vLiAoU2VlIHNldG1vZGUucHkgYW5kIHdhaXQtYWN0aXZlLnB5IHRv
IGNvbmZpcm0uKQ0KDQoxMC4gSW4gY2FsbHMgbGlrZSBWVF9BQ1RJVkFURSAoc3dpdGNoIHRvIHRo
ZSBuLXRoIHZ0KSBvciBWVF9XQUlUQUNUSVZFICh3YWl0IGZvciB0aGUgYWN0aXZhdGlvbiBvZiBu
LXRoIHZ0KSwgdGhlIHRoaXJkIGFyZ3VtZW50IChjYWxsIGl0IG50aCkgaXMgdGhlIHRydWUsIG1l
YW5pbmdmdWwgdnQgbnVtYmVyLCB3aGlsZSB0aGUgY2FsbGVyIGhhcyB0byBzZXQgZmQgdG9vLiBC
dXQgaXQgaXMgYSBwdXJlbHkgZm9ybWFsIGFyZ3VtZW50LCBjb21wbGV0ZWx5IHVucmVsYXRlZCB0
byB0aGUgdHJ1ZSBhcmd1bWVudCAibnRoIi4gU3RpbGwgZmQgaGFzIHRvIGJlIHRoZSBhY3RpdmUg
dnQuIEkgd3JvdGUgYWJvdXQgdGhpcyB0b28uIFlvdSBjYW4gY2hlY2sgaXQgYnkgd2FpdC1hY3Rp
dmUucHkgLg0KDQpJdHMgdXNhZ2UgaXMgbGlrZSB0aGlzOg0KDQokIC4vd2FpdC1hY3RpdmUgL2Rl
di90dHkxIDINCg0KQ2FsbCBpdCBvbiBWVDEuIEl0IHdhaXRzIHVudGlsIFZUMiBiZWNvbWVzIGFj
dGl2ZSwgcHJpbnRzIGEgbWVzc2FnZSwgYW5kIGV4aXRzLg0KDQoxMS4gVGhlcmUncmUgNSBpb2N0
bHMgaW4gdGhlIHNvdXJjZSB0aGF0IGFyZSBub3QgZG9jdW1lbnRlZC4gSSBzaW1wbHkgbWVudGlv
bmVkIHRoZWlyIG5hbWVzLCBhbmQgd3JvdGUgImF2YWlsYWJsZSBidXQgdW5kb2N1bWVudGVkIi4g
KFlvdSBjYW4gZ2V0IGEgY3J1ZGUgZ3Vlc3MgYnkgYXNraW5nIHRvIGEgY2hhdCBBSSwgYnV0IEkg
d291bGRuJ3QgZ28gdGhhdCBmYXIuKQ0KDQoxMi4gSW4gdGhlIGV4YW1wbGUgc2VjdGlvbiBJIGFs
c28gYXR0YWNoZWQgYSBzYW1wbGUgQyBjb2RlIG9mIHdoaWNoIGZ1bmN0aW9uIGlzIHNpbWlsYXIg
dG8gc2V0bW9kZS5weS4gSXQgaGFyZGNvZGVzIHRoZSBwYXRoICIvZGV2L3R0eTEiLiBJIGNoZWNr
ZWQgdGhhdCBpdCBydW5zIHdpdGhvdXQgcHJvYmxlbS4NCg0KSSBhbHNvIHBvc3RlZCBzZXRtb2Rl
LnB5IGFuZCB3YWl0LWFjdGl2ZS5weSBhdCBidWd6aWxsYSwgYW5kIHB1dCB0aGVpciBVUklzIGlu
IHRoZSBleGFtcGxlIHNlY3Rpb24uIFRoZSBjb21taXRlciBjYW4gZGVsZXRlIHRoZW0gZnJlZWx5
Lg0KDQpUaGVzZSB0aHJlZSBjb2RlcyBhcmUgYmFzZWQgb24gY29kZXMgd3JpdHRlbiBieSBHUFQt
NS4NCg0KMTMuIEtlcm5lbCA1LjQgaXMgdGhlIG9sZGVzdCBsb25ndGVybSB0aGF0IGlzIG1haW50
YWluZWQgdG9kYXksIGZpcnN0IHJlbGVhc2VkIGluIE5vdiAyMDE5LiBJIGhhdmVuJ3QgcnVuIG15
IGNvZGVzIGluIDUuNCwgYnV0IGxvb2tpbmcgYXQgaXRzIHNvdXJjZSAoaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC9wbGFpbi9k
cml2ZXJzL3R0eS92dC92dF9pb2N0bC5jP2g9djUuNC4zMDEmaWQ9NDRhZGJhYzhmNzIxNzA0MGJl
OTc5MjhjZDE5OTk4MjU5ZDlkNDQxOCkgbXkgcGF0Y2ggc2VlbXMgdmFsaWQgZm9yIGtlcm5lbCA1
LjQgdG9vLg0KDQpUaGUgc291cmNlIGZpbGUgaGFzIG5vdCBjaGFuZ2VkIG11Y2ggc2luY2UgTm92
IDIwMTk7IGFib3V0IDE1IGNvbW1pdHMgb3Igc28uIFZUX1JFTERJU1Agd2FzIHRvbyBkZWVwbHkg
aW5kZW50ZWQgaW4gMjAxOSwgc28gaXRzIG1haW4gcGFydCB3YXMgZXh0cmFjZXRkIGludG8gYSBu
ZXcgZnVuY3Rpb24sIGJ1dCBlc3NlbnRpYWxseSB0aGUgY2hhbmdlIGlzIHNtYWxsLg0KDQotIC0g
LQ0KVGhhdCdzIGFsbC4NCg0KSSB0aGluayBJIGNoZWNrZWQgdGhlIG1hbi1wYWdlcyBjb250cmli
dXRpb24gZ3VpZGUsIGJ1dCB0aGlzIGlzIG15IGZpcnN0IHRpbWUgdG8gY29udHJpYnV0ZSBoZXJl
LCBhbmQgc29tZSBwb2ludHMgbWlnaHQgbm90IGNvbmZvcm0gdG8gdGhlIHN0YW5kYXJkLg0KDQpC
ZXN0IHJlZ2FyZHMsDQpUZWlrYQ0K

----Next_Part(Mon_Nov_10_16_56_18_2025_022)--
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline; filename="setmode.py"

#!/usr/bin/python

'''Based on a code written by GPT-5. Released to the public domain.

Usage: ./setmode.py <tty device>

Each time the specified tty is released and acquired, a message is printed.
This program delays release requests by a second. Consult man ioctl_vt (2).'''

import os
import fcntl
import signal
import struct
import sys
import time

# from <linux/vt.h>
VT_SETMODE = 0x5602
VT_GETMODE = 0x5601
VT_RELDISP = 0x5605

VT_AUTO = 0
VT_PROCESS = 1

VT_ACKACQ = 2

my_pid = None
tty_fd = None

# struct vt_mode { char mode; char waitv; short relsig; short acqsig; short frsig; }
vt_mode_fmt = 'bbhhh'

# ioctl wrapper
def ioctl(fd, req, arg=0):
    return fcntl.ioctl(fd, req, arg)

def set_vt_mode(fd, relsig=signal.SIGUSR1, acqsig=signal.SIGUSR2):
    # Resetting to VT_AUTO is done elsewhere.
    packed = struct.pack(vt_mode_fmt, VT_PROCESS, 0,
                         relsig, acqsig, 0)
    ioctl(fd, VT_SETMODE, packed)

def get_vt_mode(fd):
    buf = bytearray(struct.calcsize(vt_mode_fmt))
    res = ioctl(fd, VT_GETMODE, buf)
    return bytes(buf)

def release_display(fd, arg):
    ioctl(fd, VT_RELDISP, arg)

# signal handlers
def sig_release(signum, frame):
    global got_release

    got_release = True

    print(f"pid: {my_pid} received release signal: {signum}")
    delay_secs = 1
    print(f"Release delaying {delay_secs} secs...")
    time.sleep(delay_secs)

    release_display(tty_fd, 1)  # 0: refuse; non-zero: allow

def sig_acquire(signum, frame):
    global got_acquire
    print(f"pid: {my_pid} received acquire signal: {signum}")

    # This can be omitted. You can call it, but it hat no effect.
    # release_display(tty_fd, VT_ACKACQ)

    got_acquire = True

got_release = False
got_acquire = False

def main():
    tty_path = sys.argv[1]

    global my_pid
    global tty_fd

    global got_acquire
    global got_release

    my_pid = os.getpid()

    try:
        tty_fd = os.open(tty_path, os.O_RDWR | os.O_NOCTTY)
    except Exception as e:
        print("Failed opening /dev/tty:", e, file=sys.stderr)
        sys.exit(1)

    print(f"current pid: {my_pid}")

    orig_mode = get_vt_mode(tty_fd)
    print(f"Original vt mode: {struct.unpack(vt_mode_fmt, orig_mode)}")

    # install handlers
    signal.signal(signal.SIGUSR1, sig_release)
    signal.signal(signal.SIGUSR2, sig_acquire)

    # call VT_SETMODE
    set_vt_mode(tty_fd, relsig=signal.SIGUSR1, acqsig=signal.SIGUSR2)

    # main loop
    try:
        while True:
            signal.pause()

            if got_release:
                print("We have been released; waiting to be re-acquired...")
                got_release = False

            if got_acquire:
                print("Re-acquired VT.")
                got_acquire = False

    except KeyboardInterrupt:
        print("Catching Keyboard Interrupt...")
    finally:
        # restore the default VT mode
        packed = struct.pack(vt_mode_fmt, VT_AUTO, 0, 0, 0, 0)
        ioctl(tty_fd, VT_SETMODE, packed)
        os.close(tty_fd)

main()

----Next_Part(Mon_Nov_10_16_56_18_2025_022)--
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline; filename="wait-active.py"

#!/usr/bin/python

'''Based on a code written by GPT-5. Released to the public domain.

Usage example: $ wait-active.py /dev/tty1 2
Run this on vt1. It will wait for activation of vt2.'''

import os
import fcntl
import sys

VT_WAITACTIVE = 0x5607

def wait_active(vt):
    print(f"Waiting for activation of VT{vt}...")
    fcntl.ioctl(tty_fd, VT_WAITACTIVE, vt)
    print("Activated.")
    sys.exit(0)

tty_path = sys.argv[1]

try:
    tty_fd = os.open(tty_path, os.O_RDWR | os.O_NOCTTY)
except Exception as e:
    print(f"Failed opening {tty_path}", e, file=sys.stderr)
    sys.exit(1)

wait_active(int(sys.argv[2]))

----Next_Part(Mon_Nov_10_16_56_18_2025_022)----

