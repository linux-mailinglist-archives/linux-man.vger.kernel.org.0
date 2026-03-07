Return-Path: <linux-man+bounces-5248-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP9RE/qSrGlsqwEAu9opvQ
	(envelope-from <linux-man+bounces-5248-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 22:04:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F0622D9F4
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 22:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FBED300D60E
	for <lists+linux-man@lfdr.de>; Sat,  7 Mar 2026 21:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BD030E842;
	Sat,  7 Mar 2026 21:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="erJXq5tH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D652F8BD3
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 21:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772917483; cv=none; b=rn19q9R3NQTEaYTF3oFd+MdciTCR+kmR4JSl7AIWhJGs99bJouyNTJpuphbOE5nqn/Y8r1Y1+dKpNxsfUtYY1AXBxpIxwm+90dXDsdIxPmDmm9f2XpEu62LL2MMqN+4SKYVwzo/uGsDEmbTojzX2RwbszCLCrcC2V659KwSNKs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772917483; c=relaxed/simple;
	bh=sFOMfIQFT442qrNAcGiE1R8lDt/nqz6m9j5DBLSCI4A=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=akHkswAlXtUrFzp8CpI+uBhCQ5wZDwKwbvee7Jt3gQRZ0XGeKQ9mVDfoqRQ4xI+HnoF3Mp2Rw0uBQbWZTzlMlMFus1KUYcgoO/mdz/aA8c+oBqoUJ8c1ZSR044uQwMUhyNGqihtuXBHH13jzaGeDSniM/+daKvAlRvg0W2TUvhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=erJXq5tH; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 7BD273C01EBB8;
	Sat,  7 Mar 2026 12:59:11 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id WqEJEgjDmz2Z; Sat,  7 Mar 2026 12:59:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 4E4243C082C91;
	Sat,  7 Mar 2026 12:59:11 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 4E4243C082C91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1772917151;
	bh=2t6XIIrrzTVX3zOopSoNRofd6wRqWlc+GdT30uCBVVg=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=erJXq5tHuvkKxk1eZguuLZgmwmc9RhAUdJmbEbqZM7VhmHD2UnzStpvdQcm5ctRhM
	 QuaMOAfv5e2z3Apv7B55ym/x107nRn79K8ihlOGiXg2xWd55mbtPd/aiD2symMqKTH
	 p0BzAohTcPMBgrFiKZRsDBJMx3HlaRJRBMh3AR/A/oHv1arIkSty2+8dIXUtb4o16y
	 fM7BF1vRU/rCqDegLiyE+M2bChp+xVPuAJNoszvSB5EM2wInlDFKat0n9JmdCG06aQ
	 6FesOzhUujGLdDDhagO/wGpTvUm6zE8ZajhwbUfB7GcOUD8UkucOt1DAdVu2pVPzUY
	 OlaDEPTgd5eSw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id THTKpVntBRFJ; Sat,  7 Mar 2026 12:59:11 -0800 (PST)
Received: from penguin.cs.ucla.edu (unknown [172.91.100.140])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 158983C01EBB8;
	Sat,  7 Mar 2026 12:59:11 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------0BHiLGRPsulkkoXOFNvxNql0"
Message-ID: <d3b5a021-9299-466c-b939-c54143034e86@cs.ucla.edu>
Date: Sat, 7 Mar 2026 12:59:10 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Bug 221186] New: clock_gettime CLOCK_TAI is incorrectly
 specified
To: Alejandro Colomar <alx@kernel.org>, bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
References: <bug-221186-11311@https.bugzilla.kernel.org/>
 <aaw8SLhwjSGR0X4m@devuan>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <aaw8SLhwjSGR0X4m@devuan>
X-Rspamd-Queue-Id: E4F0622D9F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cs.ucla.edu,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[cs.ucla.edu:s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5248-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ucla.edu:email];
	HAS_ORG_HEADER(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	DKIM_TRACE(0.00)[cs.ucla.edu:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eggert@cs.ucla.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--------------0BHiLGRPsulkkoXOFNvxNql0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2026-03-07 06:56, Alejandro Colomar wrote:
> BTW, Paul, would you mind reviewing this bug report and suggestion?

Although it's a start, we should add more detail about TAI and leap 
seconds, and the neighboring area could use some cleanup too. Proposed 
patch attached.
--------------0BHiLGRPsulkkoXOFNvxNql0
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-man-man2-clock_getres.2-modernize-leapsec-doc.patch"
Content-Disposition: attachment;
 filename="0001-man-man2-clock_getres.2-modernize-leapsec-doc.patch"
Content-Transfer-Encoding: base64

RnJvbSBhMTZhNTlmZDFjOGI3ZjRkOGM1YmVmYzAxNGUzMmI3NTg4NzY3MmZlIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBTYXQsIDcgTWFyIDIwMjYgMTI6NTQ6NTMgLTA4MDAKU3ViamVjdDogW1BBVENI
XSBtYW4vbWFuMi9jbG9ja19nZXRyZXMuMjogbW9kZXJuaXplIGxlYXBzZWMgZG9jCk1JTUUt
VmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApD
b250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0CgpDbGFyaWZ5IHdoZW4gY2xvY2tzIGFy
ZSBpbmRpcmVjdGx5IHNldHRhYmxlLCBieSBzZXR0aW5nIENMT0NLX1JFQUxUSU1FLgpUaWdo
dGVuIHVwIHRoZSBsYW5ndWFnZS4KR2l2ZSBtb3JlIGRldGFpbHMgYWJvdXQgQ0xPQ0tfVEFJ
LCBzdWNoIGFzIGl0cyBlcG9jaCwgaXRzCmNvbm5lY3Rpb24gdG8gTlRQLCB0aGUgcGFzdCBh
bmQgcGxhbm5lZCBmdXR1cmUgb2YgbGVhcCBzZWNvbmRzLAphbmQgd2hhdCDigJxUQUnigJ0g
c3RhbmRzIGZvci4KClNpZ25lZC1vZmYtYnk6IFBhdWwgRWdnZXJ0IDxlZ2dlcnRAY3MudWNs
YS5lZHU+Ci0tLQogbWFuL21hbjIvY2xvY2tfZ2V0cmVzLjIgfCA0OSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM2IGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21hbi9tYW4yL2Nsb2Nr
X2dldHJlcy4yIGIvbWFuL21hbjIvY2xvY2tfZ2V0cmVzLjIKaW5kZXggOTFhZjQ4NmYxLi41
YjY0ODMzNjUgMTAwNjQ0Ci0tLSBhL21hbi9tYW4yL2Nsb2NrX2dldHJlcy4yCisrKyBiL21h
bi9tYW4yL2Nsb2NrX2dldHJlcy4yCkBAIC0xMTUsMTYgKzExNSwxOCBAQCB0byBzdGF5IHJv
dWdobHkgaW4gc3luYyB3aXRoIFVUQy4KIC5CUiBDTE9DS19SRUFMVElNRV9BTEFSTSAiIChz
aW5jZSBMaW51eCAzLjA7IExpbnV4LXNwZWNpZmljKSIKIExpa2UKIC5CUiBDTE9DS19SRUFM
VElNRSAsCi1idXQgbm90IHNldHRhYmxlLgorYnV0IHNldHRhYmxlIG9ubHkgaW5kaXJlY3Rs
eSBieSBzZXR0aW5nCisuQlIgQ0xPQ0tfUkVBTFRJTUUgLAorYW5kIGJlaGF2ZXMgZGlmZmVy
ZW50bHkgaWYgdGhlIHN5c3RlbSBpcyBzdXNwZW5kZWQuCiBTZWUKLS5CUiB0aW1lcl9jcmVh
dGUgKDIpCi1mb3IgZnVydGhlciBkZXRhaWxzLgorLkJSIHRpbWVyX2NyZWF0ZSAoMikuCiAu
VFAKIC5CUiBDTE9DS19SRUFMVElNRV9DT0FSU0UgIiAoc2luY2UgTGludXggMi42LjMyOyBM
aW51eC1zcGVjaWZpYykiCiAuXCIgQWRkZWQgaW4gY29tbWl0IGRhMTVjZmRhZTAzMzUxYzY4
OTczNmY4ZDE0MjYxODU5MmUzY2ViYzMKIEEgZmFzdGVyIGJ1dCBsZXNzIHByZWNpc2UgdmVy
c2lvbiBvZgogLkJSIENMT0NLX1JFQUxUSU1FIC4KLVRoaXMgY2xvY2sgaXMgbm90IHNldHRh
YmxlLgorSXQgaXMgc2V0dGFibGUgb25seSBpbmRpcmVjdGx5IGJ5IHNldHRpbmcKKy5CUiBD
TE9DS19SRUFMVElNRSAuCiBVc2Ugd2hlbiB5b3UgbmVlZCB2ZXJ5IGZhc3QsIGJ1dCBub3Qg
ZmluZS1ncmFpbmVkIHRpbWVzdGFtcHMuCiBSZXF1aXJlcyBwZXItYXJjaGl0ZWN0dXJlIHN1
cHBvcnQsCiBhbmQgcHJvYmFibHkgYWxzbyBhcmNoaXRlY3R1cmUgc3VwcG9ydCBmb3IgdGhp
cyBmbGFnIGluIHRoZQpAQCAtMTMyLDE1ICsxMzQsMzYgQEAgYW5kIHByb2JhYmx5IGFsc28g
YXJjaGl0ZWN0dXJlIHN1cHBvcnQgZm9yIHRoaXMgZmxhZyBpbiB0aGUKIC5UUAogLkJSIENM
T0NLX1RBSSAiIChzaW5jZSBMaW51eCAzLjEwOyBMaW51eC1zcGVjaWZpYykiCiAuXCIgY29t
bWl0IDFmZjNjOTY3N2JmZjdlNDY4ZTBjNDg3ZDBmZmVmZTRlOTAxZDMzZjQKLUEgbm9uc2V0
dGFibGUgc3lzdGVtLXdpZGUgY2xvY2sgZGVyaXZlZCBmcm9tIHdhbGwtY2xvY2sgdGltZQor
QSBzeXN0ZW0td2lkZSBjbG9jayBkZXJpdmVkIGZyb20gd2FsbC1jbG9jayB0aW1lCiBidXQg
Y291bnRpbmcgbGVhcCBzZWNvbmRzLgotVGhpcyBjbG9jayBkb2VzCi1ub3QgZXhwZXJpZW5j
ZSBkaXNjb250aW51aXRpZXMgb3IgZnJlcXVlbmN5IGFkanVzdG1lbnRzIGNhdXNlZCBieQor
VGhpcyBjbG9jayBkb2VzIG5vdCBleHBlcmllbmNlIGNsb2NrIGFkanVzdG1lbnRzIGNhdXNl
ZCBieQogaW5zZXJ0aW5nIGxlYXAgc2Vjb25kcyBhcwogLkIgQ0xPQ0tfUkVBTFRJTUUKIGRv
ZXMuCitJdCBjb3VudHMgc2Vjb25kcyBzaW5jZSAxOTcwLTAxLTAxIDAwOjAwIFRBSSAoMTk2
OS0xMi0zMSAyMzo1OTo1MCBVVEMpLAorc28gaXRzIGVwb2NoIGlzIHRlbiBzZWNvbmRzIGJl
Zm9yZQorLkJSIENMT0NLX1JFQUxUSU1FICdzLgorSG93ZXZlciwgaXRzIGltcGxlbWVudGF0
aW9uIHJlcXVpcmVzIGhlbHAgZnJvbSBOVFAsCithbmQgaWYgdGhhdCBoZWxwIGlzIG5vdCBh
dmFpbGFibGUgaXQgYmVoYXZlcyBsaWtlCisuQiBDTE9DS19SRUFMVElNRQoraW5zdGVhZC4K
Ky5JUAorSXRzIHJlbGF0aW9uc2hpcCB0bworLkIgQ0xPQ0tfUkVBTFRJTUUKK2ZvciB0aW1l
c3RhbXBzIGJlZm9yZSAxOTcyIGlzIG9ubHkgYXBwcm94aW1hdGUsCithcyB0aGUgbGVhcCBz
ZWNvbmQgcmVnaW1lIHdhcyBpbnRyb2R1Y2VkIG9uIDE5NzItMDEtMDEuCitCZWNhdXNlIGxl
YXAgc2Vjb25kcyBhcmUgcGxhbm5lZCB0byBiZSBkaXNjb250aW51ZWQsCitpdHMgdmFsdWUg
ZnJvbSBub3cgb24gd2lsbCBsaWtlbHkgcmVtYWluIGV4YWN0bHkgMzcgc2Vjb25kcyBncmVh
dGVyIHRoYW4KKy5CUiBDTE9DS19SRUFMVElNRSAncworZm9yIG1hbnkgeWVhcnMsIGFmdGVy
IHdoaWNoIGl0cyBvZmZzZXQgZnJvbQorLkJSIENMT0NLX1JFQUxUSU1FICdzCit3aWxsIGxp
a2VseSBiZSBhZGp1c3RlZCBieSBzb21lIG90aGVyIG1lY2hhbmlzbSBhcyB5ZXQgdW5zcGVj
aWZpZWQuCitJdCBpcyBzZXR0YWJsZSBvbmx5IGluZGlyZWN0bHkgYnkgc2V0dGluZworLkJS
IENMT0NLX1JFQUxUSU1FIC4KIC5JUAotVGhlIGFjcm9ueW0gVEFJIHJlZmVycyB0byBJbnRl
cm5hdGlvbmFsIEF0b21pYyBUaW1lLgorVGhlIGFjcm9ueW0gVEFJIHN0YW5kcyBmb3IgdGhl
IEZyZW5jaAorLklSICJ0ZW1wcyBhdG9taXF1ZSBpbnRlcm5hdGlvbmFsIiAsCitvciBJbnRl
cm5hdGlvbmFsIEF0b21pYyBUaW1lLgogLlRQCiAuQiBDTE9DS19NT05PVE9OSUMKIEEgbm9u
c2V0dGFibGUgc3lzdGVtLXdpZGUgY2xvY2sgdGhhdApAQCAtMTkzLDE4ICsyMTYsMTggQEAg
b3Igc2ltaWxhci4KIC5UUAogLkJSIENMT0NLX0JPT1RUSU1FX0FMQVJNICIgKHNpbmNlIExp
bnV4IDMuMDsgTGludXgtc3BlY2lmaWMpIgogTGlrZQotLkJSIENMT0NLX0JPT1RUSU1FIC4K
Ky5CIENMT0NLX0JPT1RUSU1FCitidXQgYmVoYXZlcyBkaWZmZXJlbnRseSBpZiB0aGUgc3lz
dGVtIGlzIHN1c3BlbmRlZC4KIFNlZQotLkJSIHRpbWVyX2NyZWF0ZSAoMikKLWZvciBmdXJ0
aGVyIGRldGFpbHMuCisuQlIgdGltZXJfY3JlYXRlICgyKS4KIC5UUAogLkJSIENMT0NLX1BS
T0NFU1NfQ1BVVElNRV9JRCAiIChzaW5jZSBMaW51eCAyLjYuMTIpIgotVGhpcyBpcyBhIGNs
b2NrIHRoYXQgbWVhc3VyZXMgQ1BVIHRpbWUgY29uc3VtZWQgYnkgdGhpcyBwcm9jZXNzCitU
aGlzIGNsb2NrIG1lYXN1cmVzIENQVSB0aW1lIGNvbnN1bWVkIGJ5IHRoaXMgcHJvY2Vzcwog
KGkuZS4sIENQVSB0aW1lIGNvbnN1bWVkIGJ5IGFsbCB0aHJlYWRzIGluIHRoZSBwcm9jZXNz
KS4KIE9uIExpbnV4LCB0aGlzIGNsb2NrIGlzIG5vdCBzZXR0YWJsZS4KIC5UUAogLkJSIENM
T0NLX1RIUkVBRF9DUFVUSU1FX0lEICIgKHNpbmNlIExpbnV4IDIuNi4xMikiCi1UaGlzIGlz
IGEgY2xvY2sgdGhhdCBtZWFzdXJlcyBDUFUgdGltZSBjb25zdW1lZCBieSB0aGlzIHRocmVh
ZC4KK1RoaXMgY2xvY2sgbWVhc3VyZXMgQ1BVIHRpbWUgY29uc3VtZWQgYnkgdGhpcyB0aHJl
YWQuCiBPbiBMaW51eCwgdGhpcyBjbG9jayBpcyBub3Qgc2V0dGFibGUuCiAuUAogTGludXgg
YWxzbyBpbXBsZW1lbnRzIGR5bmFtaWMgY2xvY2sgaW5zdGFuY2VzIGFzIGRlc2NyaWJlZCBi
ZWxvdy4KLS0gCjIuNTMuMAoK

--------------0BHiLGRPsulkkoXOFNvxNql0--

