Return-Path: <linux-man+bounces-5508-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGWNI0feBmp4ogIAu9opvQ
	(envelope-from <linux-man+bounces-5508-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 10:50:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3340B54BBB3
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 10:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B90C33035B2F
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 08:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3E9346FA6;
	Fri, 15 May 2026 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="VTv2pWpd"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-muc.bfs.de (mxdmz01-muc.bfs.de [193.174.230.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4EF31A56C
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.174.230.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778834663; cv=none; b=TjM1kuCPwtpAK8c1wMSKNUPKC+HbfRL53WRKj4wlLIU4+LMZ6TmLeCc8VNwGT2286Zmt4ehLFhAZQ4ik79KNLa1ZIPMPsIWz1QuxTudXhSWKQfVheki4+lIiNfUQh/LBlph3AWmWVRnb3EsBDw5e9d9CDIfc1mEs4vX4NfQOXqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778834663; c=relaxed/simple;
	bh=9K0T3pvMl1V+eY2uE0ge9aoVBPQd7JBk8B/BmDrn8l4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=cMldMKWMZv+IjHAfUbL/vkknt48iF4FVMz6xpCsJQ7qkZZx964WfybjJJNsJXBYzWR55Yd6MvxyBNSOnGgsKdmPJHZAPNXfRpG+z9PrnxDrmXwHbJT+OHjhI9ZA0sZOGFYRrJlYOa30d38C8VbHzgWP44ygXVCBDL/PxXeodtT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=VTv2pWpd; arc=none smtp.client-ip=193.174.230.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-sz.bfs.intern (unknown [127.0.0.1])
	by mxdmz01-muc.bfs.de (Postfix) with ESMTPS id 4AE19200DBC8;
	Fri, 15 May 2026 10:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1778834151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jCaGkVioMY57X8bPC0UkRipuvym39sXyQXR8BCv+EiY=;
	b=VTv2pWpdlzjUXVNSJKiL8tkmZ1HXy+923Izp4iI63RQTgiMcmiYE/yd10NFP9p7q8i04na
	wPkcvDgEmLBBtO8uw9IygVAudORHmGLpfvv6gFq/Ixh6zixJ/tkG276bjJSarrGtfe/EQC
	6s7eudE4pFACRLO4x+ZXPuuAcrzfF57+6IDB923x1qhfHMEGWWtDotMrsVKI3z3/tQwv/Q
	FFoUu5W8EwP9D/rDdUE41I+NhI+Ewyxt7zdzHQFuv0uGtHYzxylQ91qSHbVp+vi8d19uUf
	aPVLFxymAP6W4+g64G9RlYz2ZIfZkackslhXG9RYaD4Tp5qZbSeqxp49fT3brQ==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [127.0.0.1])
	by mxint01-sz.bfs.intern (Postfix) with ESMTP id 2052F121C9;
	Fri, 15 May 2026 10:35:51 +0200 (CEST)
Received: from srvex02-muc.bfs.intern (127.0.0.1) by SRVEX01-MUC.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.61; Fri, 15 May
 2026 10:35:50 +0200
Received: from srvex02-muc.bfs.intern (127.0.0.1) by srvex02-muc.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Fri, 15 May
 2026 10:35:50 +0200
Received: from srvex02-muc.bfs.intern ([fe80::30d2:b726:c839:d6eb]) by
 SRVEX02-MUC.bfs.intern ([fe80::30d2:b726:c839:d6eb%15]) with mapi id
 15.02.2562.037; Fri, 15 May 2026 10:35:50 +0200
From: Walter Harms <wharms@bfs.de>
To: Alejandro Colomar <alx@kernel.org>, Bruno Haible <bruno@clisp.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Martin Uecker
	<uecker@tugraz.at>
Subject: AW: clumsy cast in dlopen.3
Thread-Topic: clumsy cast in dlopen.3
Thread-Index: AQHc45IaGeAQSzmTJ0euHKV9upcd+LYNQSQAgAGATBg=
Date: Fri, 15 May 2026 08:35:49 +0000
Message-ID: <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
References: <21436742.Yz81rIOvuz@nimes>,<agWw2-7U82vIKSWI@devuan>
In-Reply-To: <agWw2-7U82vIKSWI@devuan>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3223-9.1.2019-29034.000
X-TM-AS-Result: No-10--9.849700-5.000000
X-TMASE-MatchedRID: NZHPueotO27WoQfP/4VrGa+PVXTqz06pmHJMNyf2CIF5omhgu+tgnLe6
	urPFlSt5H2xok6cGGNCMeZ6i9qe6pSW9+BUMmcWnRYNhzuZZjRBelLFkoMPMWGSzaPMNx4CM29n
	5Hk4dqlQd79Smn/h5xGZstws+BA3RcXL3P3dqoBzPEeDcxvUDjLrAb7W5NbXgwo4K6CWyCV66bH
	aJlEOyckPK70P2TTBJfMSygnDluNOFY6M/5HNX1hqsS/8jaA/KC4F2niBR3WVql71aeJbD/KzSb
	gI3g0INWjsaYI4lh3X4sfhU+lJX6+9j9/4eIKuSH4pNnFLAi64f/bharsPs65/xTVk+in8fc80f
	4yYjTLAxWmoO+aNxi37cGd19dSFd
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--9.849700-5.000000
X-TMASE-Version: SMEX-14.0.0.3223-9.1.2019-29034.000
X-TM-SNTS-SMTP:
	C25E43873B097C3ABB17603693B010CFBABE7315881BCE1A5D284D5E6F8C37A92000:9
X-Rspamd-Queue-Id: 3340B54BBB3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bfs.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bfs.de:s=dkim201901];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5508-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bfs.de:mid,bfs.de:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bfs.de:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wharms@bfs.de,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Hello,
I agree the cast is not nice, (someone for a extension of C standard ?)
but i have to admit that i have never seen the trick with the union.
But it needs some explaination. The comment in the example is already huge,
i would ask for a comment subsektion for this behavier here.

btw: the original code in the example looks like this ...
cosine =3D (typeof(double (double)) *) dlsym(handle, "cos");

my2c
 wh

________________________________________
Von: Alejandro Colomar <alx@kernel.org>
Gesendet: Donnerstag, 14. Mai 2026 13:29:20
An: Bruno Haible
Cc: linux-man@vger.kernel.org; Martin Uecker
Betreff: Re: clumsy cast in dlopen.3

Hi Bruno,

On 2026-05-14T12:56:55+0200, Bruno Haible wrote:
> The dlopen.3 man page contains this text:
>
>                   *(void **) &cosine =3D dlsym(handle, "cos");
>
>               This (clumsy) cast conforms with the ISO C standard and wil=
l
>               avoid any compiler warnings.
>
> However, such a cast violates the strict aliasing rules of ISO C, no?

I think I agree.  Dereferencing the pointer &cosine with a type
different than the type of the object is not allowed.  I've CCed Martin,
who might be able to confirm.

>
> The proper workaround is to use a union:
>
>   union { double (*cosine) (double); void *pointer; } u;
>
>   u.pointer =3D dlsym(handle, "cos");
>   ...
>   printf("%f\n", u.cosine(2.0));

This is seems much better, indeed.


Have a lovely day!
Alex

>
> Bruno
>
>
>
>

--
<https://www.alejandro-colomar.es>

