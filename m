Return-Path: <linux-man+bounces-5538-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBdYG8DOCWrxqQQAu9opvQ
	(envelope-from <linux-man+bounces-5538-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 16:20:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1061D561960
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 16:20:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E25553001FFE
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 14:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73623B8BCF;
	Sun, 17 May 2026 14:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="poMc5aUH"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-sz.bfs.de (mxdmz01-sz.bfs.de [194.94.69.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161CB3B7749
	for <linux-man@vger.kernel.org>; Sun, 17 May 2026 14:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.94.69.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779027642; cv=none; b=m0aNlcup/31eWP6hHjBP1UPiSyJzYhmlW67VywOZKF+Bti31xmWrh41qh2lO+njBxZZcpXT6WflrNyqjwnK437z9O+VnH7cZVEi9A866GKHsM24frdKq2+mRneIgS76DknxXXqyxCkEnpva8EvV/fqfEly3OVJVzcyx3WiHL96c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779027642; c=relaxed/simple;
	bh=aEVYXhAnvuxCx99P3y+BzPsnVpdNFDVmPgC1rGyAt4M=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=NMKfe3JJ1BGkUJBJTquQu1taWdjVvbzrNFn42aJ0CVu5TfjU0+lehbO33E32VqKMyi07r5Y8sp1NpkonIJcwMKAQgiM8HV4Olou5XXWAc7WSCYjgXZQSC9q7g/Gcl+EQHJMtUN0RXph5N8KDlaR3oN8JG8hDrmhKmeKp3OFhApo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=poMc5aUH; arc=none smtp.client-ip=194.94.69.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-muc.bfs.intern (unknown [127.0.0.1])
	by mxdmz01-sz.bfs.de (Postfix) with ESMTPS id 2B3983010611;
	Sun, 17 May 2026 16:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1779027006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kmkwT0861wVAU8TFClWQNQA/2IwVAYRK2ro3z28d5R4=;
	b=poMc5aUHlEqfvoK2yav/8ys4Kfv1HCKAq4033z7hazggNVs5HfIKUXWlIziTWzf18BPz6/
	WriCZDV+PRTJ+n9vJwKgJFVpm6wOVZbsqZQvtX0cEf2WnW+7fiANd91zZ7m2nNqns7rtuA
	OVZkwxV4ql+NFSgWl1d8mD68jmnpl5igwF4vQBSqDom9taKn47mrYUOE4F4XVvO3l20ctf
	u6hGijvG+IBlc46kcrg7MKtT5+/MbPWj07agny8UbHbj7ZuB9fxTI+gHGVYze9ULGIPcut
	eDO2Qm/YB2oFFlr0ExiIY5kABs766MOHgYFy0JfPoFdPci82zPVB3j8wwKDgXQ==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [127.0.0.1])
	by mxint01-muc.bfs.intern (Postfix) with ESMTP id DFF69300FCC8;
	Sun, 17 May 2026 16:10:05 +0200 (CEST)
Received: from srvex02-muc.bfs.intern (127.0.0.1) by SRVEX01-MUC.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.61; Sun, 17 May
 2026 16:10:05 +0200
Received: from srvex02-muc.bfs.intern (127.0.0.1) by srvex02-muc.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Sun, 17 May
 2026 16:10:04 +0200
Received: from srvex02-muc.bfs.intern ([fe80::30d2:b726:c839:d6eb]) by
 SRVEX02-MUC.bfs.intern ([fe80::30d2:b726:c839:d6eb%15]) with mapi id
 15.02.2562.037; Sun, 17 May 2026 16:10:04 +0200
From: Walter Harms <wharms@bfs.de>
To: Alejandro Colomar <alx@kernel.org>, Martin Uecker <uecker@tugraz.at>
CC: Bruno Haible <bruno@clisp.org>, "linux-man@vger.kernel.org"
	<linux-man@vger.kernel.org>
Subject: AW: AW: clumsy cast in dlopen.3
Thread-Topic: AW: clumsy cast in dlopen.3
Thread-Index: AQHc45IaGeAQSzmTJ0euHKV9upcd+LYNQSQAgAGATBj///gfgIAARYUAgAATdYCAAzLi1Q==
Date: Sun, 17 May 2026 14:10:04 +0000
Message-ID: <b7f2b29f15e04a70b1d1cf444411df26@bfs.de>
References: <21436742.Yz81rIOvuz@nimes> <agWw2-7U82vIKSWI@devuan>
 <face5848c7aa40ba94d37f25ccbd62e9@bfs.de> <agbsgTSLbKb-jz-p@devuan>
 <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>,<agc3u2sYC_DfeCQs@devuan>
In-Reply-To: <agc3u2sYC_DfeCQs@devuan>
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
X-TM-AS-Result: No-10--21.165600-5.000000
X-TMASE-MatchedRID: NB7Ln+85AzXWoQfP/4VrGesfkPrj7CaqZK1SF2R3ediJFoX8AKzcA3ea
	VMHVsUJK2JiWGY3nhrgZWldsgMi0EV7LqmFWUDtv+txW/TN+da+VHu03nppZVWMg4pkM36D7ehd
	Z/bwq3VY+URnTJeVQRnaFhtlYbl9vKheclqqMv/TXWqcFbzJgr6DQd0SMNZ+lt4z3q+HO5fu2Tk
	AkMLY2gens8Q2bdgD7Sz/L6EfFs/hHwbGW0iOZcJGPSO6O5JCaabSjAcojr7rorx4qUCCLAgwKV
	2gotcMzRyGIkIW9tOh/REQA9d7bwfjnAD1emNt/pauYss4URAXcDe/QLgSyiAmqaOCHdEkvisxX
	vP5DhcGUIjgQ7HP27kYElt6OS1F6rC0NytMhAOAJ9830SX03A0pvBoSw/Ig3vkj6vV0WnpKpc2m
	XV9zZ17K2rY2he20yyrzRjZhtElOvngkjHjojpLi1J0VsQLT228gAxP/Ts6IH2l80MvY9heUo4N
	9PjSkTA/3R8k/14e0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--21.165600-5.000000
X-TMASE-Version: SMEX-14.0.0.3223-9.1.2019-29034.000
X-TM-SNTS-SMTP:
	2A137017CDAF0FF4B40E8CF0EF29F391079DD83D8FCC2ADE057A7D05B02039202000:9
X-Rspamd-Queue-Id: 1061D561960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bfs.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[bfs.de:s=dkim201901];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5538-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url];
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

Just for clarification, my comment was not about the patch itself.
I was just expressing my fear that a comment discussing various complex
topics will be added to the example and confusing future readers.
I have notice that Bruno has send a patch removing most of the comments,
i am happy with that outcome.

CU
________________________________________
Von: Alejandro Colomar <alx@kernel.org>
Gesendet: Freitag, 15. Mai 2026 17:15:03
An: Martin Uecker
Cc: Walter Harms; Bruno Haible; linux-man@vger.kernel.org
Betreff: Re: AW: clumsy cast in dlopen.3

Hi Martin,

On 2026-05-15T16:05:24+0200, Martin Uecker wrote:
>
> There is no such thing needed here, you just do
>
> double (*cosine)(double);
>
> cosine =3D dlsym(handle, "cos");

Hmmmm, yes.  I don't know why the manual page uses a cast in the POSIX
version.

The above wouldn't be enough in ISO C, since void* isn't guaranteed to
work with function pointers.  However, any systems where dlsym(3) works
must support holding function pointers in void* (because otherwise,
dlsym(3) itself wouldn't work), so ISO C shouldn't be a concern at all.

Hmmm; I'll simplify the page.

Thanks!


Have a lovely day!
Alex

>
>
> Best,
> Martin
>
> Am Freitag, dem 15.05.2026 um 11:56 +0200 schrieb Alejandro Colomar:
> > Hi Walter,
> >
> > On 2026-05-15T08:35:49+0000, Walter Harms wrote:
> > > Hello,
> > > I agree the cast is not nice, (someone for a extension of C standard =
?)
> > > but i have to admit that i have never seen the trick with the union.
> > > But it needs some explaination. The comment in the example is already=
 huge,
> > > i would ask for a comment subsektion for this behavier here.
> >
> > The thing about unions is that the only two ways for type punning that
> > are blessed by ISO C are unions and memcpy(3).  Everything else isn't
> > allowed.
> >
> > Perfectly valid:
> >
> >     static_assert(sizeof(int) =3D=3D sizeof(float));
> >
> >     union u {int i; float f;};
> >
> >     float    f;
> >     union u  u;
> >
> >     u.i =3D 42;
> >     f =3D u.f;
> >
> > Perfectly valid:
> >
> >     static_assert(sizeof(int) =3D=3D sizeof(float));
> >
> >     int    i;
> >     float  f;
> >
> >     i =3D 42;
> >     memcpy(&f, &i, sizeof(float));
> >
> > UB:
> >
> >     static_assert(sizeof(int) =3D=3D sizeof(float));
> >
> >     int    i;
> >     float  f;
> >
> >     i =3D 42;
> >     f =3D *(float *) &i;
> >
> >
> > Have a lovely day!
> > Alex
> >
> > > btw: the original code in the example looks like this ...
> > > cosine =3D (typeof(double (double)) *) dlsym(handle, "cos");
> > >
> > > my2c
> > >  wh
> > >
> > > ________________________________________
> > > Von: Alejandro Colomar <alx@kernel.org>
> > > Gesendet: Donnerstag, 14. Mai 2026 13:29:20
> > > An: Bruno Haible
> > > Cc: linux-man@vger.kernel.org; Martin Uecker
> > > Betreff: Re: clumsy cast in dlopen.3
> > >
> > > Hi Bruno,
> > >
> > > On 2026-05-14T12:56:55+0200, Bruno Haible wrote:
> > > > The dlopen.3 man page contains this text:
> > > >
> > > >                   *(void **) &cosine =3D dlsym(handle, "cos");
> > > >
> > > >               This (clumsy) cast conforms with the ISO C standard a=
nd will
> > > >               avoid any compiler warnings.
> > > >
> > > > However, such a cast violates the strict aliasing rules of ISO C, n=
o?
> > >
> > > I think I agree.  Dereferencing the pointer &cosine with a type
> > > different than the type of the object is not allowed.  I've CCed Mart=
in,
> > > who might be able to confirm.
> > >
> > > >
> > > > The proper workaround is to use a union:
> > > >
> > > >   union { double (*cosine) (double); void *pointer; } u;
> > > >
> > > >   u.pointer =3D dlsym(handle, "cos");
> > > >   ...
> > > >   printf("%f\n", u.cosine(2.0));
> > >
> > > This is seems much better, indeed.
> > >
> > >
> > > Have a lovely day!
> > > Alex
> > >
> > > >
> > > > Bruno
> > > >
> > > >
> > > >
> > > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es>

--
<https://www.alejandro-colomar.es>

