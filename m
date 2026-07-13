Return-Path: <linux-man+bounces-5749-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xo1VCjNlVWp1nwAAu9opvQ
	(envelope-from <linux-man+bounces-5749-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 00:22:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 707DF74F7A8
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 00:22:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MMx2aj55;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5749-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5749-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38244303C40A
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 22:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD40638B125;
	Mon, 13 Jul 2026 22:22:39 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60499385521
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 22:22:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783981359; cv=none; b=Z/LG2/MDHdyF7u7uxWIFV1YRVRtr8GoaBXW6KEjogT70t0a2L6CbhM0jZgZjCwEkQZ4QxqnI96Wp9qPO/MfUB0ZcaHbDoK9UkrrimCnm3vHsHYSQakfKKkAkHyRWwNpGXYIS4HIcElj4QxCV5JlrLyjd82gVGqKzFtmz4QSqUV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783981359; c=relaxed/simple;
	bh=j8mRIk3rRVtdpkIzoczXtJfwI22PdEVTQSdl2oxmV28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lctRyLJ61M3c2T96kvTeMF2v5StdcDHVFJ+D/HzZCkfSqEf17U5xHszkx4LHJorDAwCeDhPJJbQgiLOxhFRxwCCS2NGSe/Zwpn41YZ/EfqJPpVn36luMNlGoVQZ563tmKFFydIyZ0ivEA3QY6V3S39x3HKgyQPXkdYEXR1U+F48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MMx2aj55; arc=none smtp.client-ip=74.125.224.47
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-66806ec997bso7390d50.3
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 15:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783981357; x=1784586157; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0UILdRGsP2VgDzn46o/OZWyY8zEtdnyeqd3lFQQhKhE=;
        b=MMx2aj5508vlItgkNVUTxEq1lvOjnt4duCzWOOBls7K/zy8MQDIswbcNoFb7HOVbg2
         vjR+EZzg7kof5E5bgGD0ib8d2/DJoomHx9NmuwZl/UsgIoCZbz/woCSGkp+4qUul9sZC
         HAJscn+fmowVKBJqQMGD0cakg2J9B3jmLXTVWkXvRbqk7zcaDSa5LSgrH/tnoov6kSt9
         13BPfRf/TLmGwxLSC+EsQvfBVnaDoytj51wu9x+fveGOGkciiqDijyaAs2aG5T6H7jp0
         hUULFm/BLzpZLCadhoyZTh2BQLisSdGR9pKIsjcBvir/Ny/uR/wqfD+t5fBe5pOsvmwQ
         +lOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783981357; x=1784586157;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0UILdRGsP2VgDzn46o/OZWyY8zEtdnyeqd3lFQQhKhE=;
        b=ihkGo3ZtjgodUUi4hvImmhhfZyVEK2cCO0US8d6V60NkJvx7MneHaD5HnO+ZOI+nNK
         TRBvsIc6nGEa8lMU0xY2Ogt7QEQ1Fo/8S9/0u6iSZZ6LOmBFmgAg6SYhhlT2moHrCXpx
         ytVJ6MKK+z7JxSzR75HBSplsTFaL1NGM4/Hkq9rtrcECe8TtdtZ/hu2/X33Xf+gxGiN4
         a+sgoili1d2TMy4z09FkcGBITL9brpH1F6Q+Cl/6TJ4DExUSkgDbx2g/dwHUqhlIknUU
         9h/+pDME0WcE2QnjHPodpiTJ7rYJEuaRYTSPOdT1EnH/SGPz/Oc2IHp8AKV0z4WwXz1p
         lGNg==
X-Forwarded-Encrypted: i=1; AHgh+RrfB885V3dTO6QWdZFyp17Z0/oyLWOV5zr4cahs9OuIY4HAhu8ZTrof9N3DERWBsbhEUDWyoNaSgnU=@vger.kernel.org
X-Gm-Message-State: AOJu0YyS6fPtGZFRsOvOQPASHTenc0wPqyWYRp4S8dnZPXRY0geb2v1Y
	Zx2z5XTH/LV2/duuiCq17Mvw7dIE8cmIORpd7taZFQKdgIrcRiPy8Fxs
X-Gm-Gg: AfdE7ckrATTa9iGkX239bgWmHXAKfyXTVTwxOENxhejczjetbhlmy/OAPMbPGyLDqy0
	Y4kXJZrXG7LNu9La1f2LXpCbU7Q2tJ7B0ldTr4qOQx8I4c6bkT82dz4s/7BHbCGQgBAuyRRneNv
	tvodZsrNJRtE4YhAECBkA+3929ZtLA9TN0POtCwLP0WJCWanQW5RDCV/UZdSnQw7axbzzDa5fTD
	M0imZBWF+zVUen73D38uXpzsC8q1kZWfKvWoKpQN7Zdx9z7HLrH3POZ3SWGOxoyddFo7bC2pLwV
	vltlECpjIHOpvipupupVx4DpnzgzVJMDudSqp6r2zOWDRpD73bXmdquIdp6Mez7XZuaeAvWzl6m
	66a+eN0D7uet7smP/48PDLC7cdgQ8XpMXeOzkgH1uKSgquERyZ4fZOkwEWiSPBBxDbgLeKPj6pX
	dJBw==
X-Received: by 2002:a05:690e:d53:b0:667:770c:f88e with SMTP id 956f58d0204a3-667d7b33417mr6622347d50.45.1783981357371;
        Mon, 13 Jul 2026 15:22:37 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-66787aa1237sm14802245d50.19.2026.07.13.15.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:22:36 -0700 (PDT)
Date: Mon, 13 Jul 2026 17:22:34 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: DJ Delorie <dj@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <20260713222234.h3efoiaq3jsakk6s@illithid>
References: <alVCfr38jr38jIfT@devuan>
 <xn5x2i8tim.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3jckagqwfkliwzez"
Content-Disposition: inline
In-Reply-To: <xn5x2i8tim.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5749-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 707DF74F7A8


--3jckagqwfkliwzez
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
MIME-Version: 1.0

At 2026-07-13T17:33:05-0400, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > Please split into separate patches with commit messages,
>=20
> How do you want them split?  Per man page, or one for breaking out
> ld.so.conf and one for adding tunables.conf?
>=20
> Also, I've been using the output of "git show" for these patches.
>=20
> > Let's start a new paragraph:
> >
> > 	.P
>=20
> We still need a better language ;-) ("why doesn't it know to start a
> paragraph after a heading?" ;)

It does.

groff_man(7):

     .SH [heading=E2=80=90text]
            Set heading=E2=80=90text as a section heading.  Given no argume=
nt,
            SH plants a one=E2=80=90line input trap; text on the next line
            becomes heading=E2=80=90text.  The heading text is set in bold =
(or
            the font specified by the string HF), and, on typesetters,
            slightly larger than the base type size.  If the heading
            font \*[HF] is bold, use of an italic style in heading=E2=80=90=
text
            is mapped to the bold=E2=80=90italic style if available in the =
font
            family.  The inset level is reset to 1; see subsection
            =E2=80=9CHorizontal and vertical spacing=E2=80=9D below.  Text =
lines after
                                                      ^^^^^^^^^^^^^^^^
            the call are set as an ordinary paragraph (P).
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

> > You should indent this compared to the surrounding text:
> >
> > 	.IP
> > 	.in +4n
>=20
> Isn't that what the .IP does ?

There were difficulties, some imposed by the previous Linux man-pages
maintainer, Michael Kerrisk.

https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e5035@gmai=
l.com/

The better language that doesn't yet exist would, of course, solve all
of everyone's problems at once, even the problems that are mutually
exclude each other's solutions.

Regards,
Branden

--3jckagqwfkliwzez
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmpVZSIACgkQ0Z6cfXEm
bc4bCQ//Q0n7et2PuadGu1p12mOEof7yE5UCn954t69Z+TP02k1+YtYTN6NmMn77
xfGHrDIdO0lW4AXE+QlOuZfYd1x9CCElaAMU04oECJgw3GOR+owUaS/vdn1CPQX0
wTSqBhjVlSBmxwkBJpmW0IkimmbZ6gI4STIIF5qKEvlXPfWosMooeXReIH3kmu83
UIhNvkHlHOdOelWBBh+lt68mKNckYE9SIVhkapBQgUt4y5UZhyP+K0FSvHdU4uoF
1xTaqhjkz3HRMu8VFf6N+Mu9un90BrCnjhpty1pngPCRxfBZcy4Wvndlw4xWay6m
r3t/MoUonQcRVBcQWSBge0V2vGmanbx7MyspObf9e8YbgYeUoxCpNSHbJGzHS1Zx
f9S/Ig5Sa649xHrmvlQUMkQonp9g+U/D6zq8fJfJ4eIrdKwg9P0B23kLICcdOlhI
PlH1o03jQJyaia717yLN4Tcs8tuzEZWJuFgi8LW8IvWuOFafu9yDFkXR07EBRhr9
Ngv4zMZRZ+qn2J3F0CVsSy5jmqL/CHbBz7W32n0g9alLCmkwATvwvNmaFkZA5zqJ
ZfvX+fHrmubGtWCWq98yUHuyXyDVRZEhqaIrxEWWFd16hbzuR/ep4TFevzo2RG0J
gQPkFgloqFB1PNPdU/0sEXIFjmsS+Ij4a5fqlv5F1zJdvdI2uzs=
=Q6m9
-----END PGP SIGNATURE-----

--3jckagqwfkliwzez--

