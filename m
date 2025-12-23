Return-Path: <linux-man+bounces-4469-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C79ECD77B1
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 01:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F5513018955
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 00:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E616A8D2;
	Tue, 23 Dec 2025 00:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d2C/+vR1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f196.google.com (mail-yw1-f196.google.com [209.85.128.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9B62AD32
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 00:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766448930; cv=none; b=IeFCD9kW3XYOOuNXFv5oGKNbf1xKdwWh6Ml66Ip8mONXXmR6KEi6+isvThTOIbnqZuMfWM1ASjaOsZ+t0fyQ02bi8d+tkr7P1tXKmpZ2puq3gvK6g8lIAHcuHndZvVu/n4R66DWgUMgH7l5X34U4YTxCW914XbS9zmH+SD1O/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766448930; c=relaxed/simple;
	bh=oa6DiriXR5SiRvMo9DR7BwdtFLF0UcUCPbfNifl55PY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=g8UHDAH+Y7rRoZzu5MeJO0Uf5R2mx2ByomDV98ev2hGesr1sAbC7aEpmZ+Uc2Qoxrp0oN8zXo7Ec+ez88kSMtTgYTQNMWuNdPDTbVYekW5+bkH3PNSjqSV3OLvNok0KvfY38lSjUVMyb8kyzRutluiiYO4leP2mMJtkOVOmlqrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d2C/+vR1; arc=none smtp.client-ip=209.85.128.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f196.google.com with SMTP id 00721157ae682-78fb6c7874cso34335117b3.0
        for <linux-man@vger.kernel.org>; Mon, 22 Dec 2025 16:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766448927; x=1767053727; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4qswQcAdssRgct1HGOfa4fR1r+7G9lB9gy5ghuGF1nA=;
        b=d2C/+vR1Pwln/lya+20qul8yT62i8E0PwVJTh8hunMIJiUHv8ciFVqw3/vC5JxkqTX
         mAxEAIgCR1cKkJ7DJAF+XjfoaZ8t2532sFFTfMoy8mEjgeefKxnKfak0BULD7TAm1K4L
         wWia7jBvMh0dBYoZvbbvtBEhXY1+Od6L7wS5hgUvmIIP+Vzift1axW4Vsu+pLb/a3kWk
         9q0ViX51jB2TREcvnw4UwQ2FF20gFfikhLJQVKuPbp8oWoJaWBnFJc5J+vGffW4XWOkZ
         J6BKdJU5dn0C3wv83ao7/WiXijwyGRDSUKBtBAIEhPLNAsgFnCVEncEJT+r8BvNzxhjy
         4eIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766448927; x=1767053727;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qswQcAdssRgct1HGOfa4fR1r+7G9lB9gy5ghuGF1nA=;
        b=Dd0sOy4TGOV6yk9p0QJk+3fhQ66MRxXJSLpzQAZJPSZts8OUl72n9d+ez22sgqp+ej
         t6hJUDfAEYla9IAOVk6dWESGT0wp5hyo4N8I0DMrDqA86zzrcrCMYsbiCVsLBVzIQxay
         jFsKy+OW79osgviNr7e/3rj2thHXlrUcQekPP1clrfKZmp2ZTje4gHWW4yDHWzHcTy/9
         7yZxPf9bVM2kGOWNo1M1hZsJvbnydx0ktJydtLnk/E4nEVQMVw+A2+0YAqsmkHEQBwCE
         KPVlmYriujF6a3LQX6VsPs+5UVfJAjmu8pznfp7tpr6NmYwCpCCiSK8NGeP7F1BW6Dww
         CROQ==
X-Gm-Message-State: AOJu0YyVxi0Qcbz23ZxWZGSKTXHb6McCgjHZTDDw0rVqmoE8SldbMbjh
	crezbs90oi8sztTHOtnrEala39tvBTQim7rX696w/jkFCsvHGy4Ma2ce
X-Gm-Gg: AY/fxX6Kph/ueui0++lkWcULOmY7rP1s6rvd0+xxUlQxH24GhldCtEhbUVFECfFOpzQ
	5euT3qYiTL2g7QtqLML7GPTQ4MmlX0GR07m4kWl1ZpRJI8g4MALdSk7NDHKZprS83s1ftpT4sTj
	xlfOljDsX6gEDFYUXbF/9RMurtKOFSusUO7hYSCKs34Och4nvFgaUNrr4G6yHmieGqnjG5R27E7
	KkusEq6nrFKBdlkhGQOvSEkT01O4Hr+RI9hbdD2W8or+KAo0C5+5UhxXTY9P/+ugnK1LYbStgWh
	wkMUcng17OBYAOsggpR5PZrMZ69/YorPvGwpgGn3sHiqbQIRq6dEMtDEnNCRhFRNhsVZrctVUg9
	08Hpwg0DspMBWnxvTGPp6AUZVhnZZ2AcMqplPs0YwhFhfzpiFzcMTZGC/NnIOEt0oSDJmrsmVCS
	PT
X-Google-Smtp-Source: AGHT+IGcassC3V/Q+qsL9QZh6A4oRQdbPSNzrpA87zxBvFZ6zToRfbUMLMDDWmGIfpLGkIWVU2xnKA==
X-Received: by 2002:a53:d5c6:0:b0:640:caa5:57bd with SMTP id 956f58d0204a3-6466a854989mr7814258d50.37.1766448927376;
        Mon, 22 Dec 2025 16:15:27 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a8bd4c3sm6178437d50.8.2025.12.22.16.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 16:15:26 -0800 (PST)
Date: Mon, 22 Dec 2025 18:15:24 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>,
	Eugene Syromyatnikov <evgsyr@gmail.com>,
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>,
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>,
	misc@openbsd.org
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <20251223001524.fkzuimnouq4537rd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y2vii2zcdkjimuy7"
Content-Disposition: inline
In-Reply-To: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>


--y2vii2zcdkjimuy7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
MIME-Version: 1.0

Hi Alex,

Content looks great; as you've likely guessed, I have commentary only on
man(7) markup.

At 2025-12-22T22:33:09+0100, Alejandro Colomar wrote:
> I've rewritten the entire subsection from scratch, similar to the
> email I wrote detailing the history of the specification.  I think
> this is explains the turbulent history of this API better, and allows
> programmers to decide if they want to trust this API or not.
>=20
> Does this look good?

At 2025-12-22T22:33:13+0100, Alejandro Colomar wrote:
> Document the turbulent past of aligned_alloc(), and how libraries have
> actually implemented it.

Nice summary!

[...]
> +the specification of this function had
> +.UR https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2
> +several issues
> +.UE .
[...]
> +.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460
> +DR460
> +.UE
[...]
> +.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm
> +N2072
> +.UE

I'd put hyphenless break points after each sequence of slashes in these
URLs, and before each dot.

I`d spell these `-`s as `\-` so that they appear as hyphen-minuses when
printed, not as hyphens.

groff_man_style(7):
   Hyperlink macros
=2E..
     Prepare arguments to MR, MT, and UR for typesetting; they can
     appear in the output.  Use special character escape sequences to
     encode Unicode basic Latin characters where necessary, particularly
     the hyphen=E2=80=90minus.  (See subsection =E2=80=9CPortability=E2=80=
=9D below.)  URIs can
     be lengthy; rendering them can result in jarring adjustment or
     variations in line length, or troff warnings when one is longer
     than an output line.  The application of non=E2=80=90printing break po=
int
     escape sequences \: after each slash (or series thereof), and
     before each dot (or series thereof) is recommended as a rule of
     thumb.  The former practice avoids forcing a trailing slash in a
     URI onto a separate output line, and the latter helps the reader to
     avoid mistakenly interpreting a dot at the end of a line as a
     period (or multiple dots as an ellipsis).  Thus,
            .UR http://\:example\:.com/\:fb8afcfbaebc74e\:.cc
     has several potential break points in the URI shown.  Consider
     adding break points before or after at signs in email addresses,
     and question marks, ampersands, and number signs in HTTP(S) URIs.
=2E..
Portability
=2E..
     \-     Minus sign.  \- produces the basic Latin hyphen=E2=80=90minus
            (U+002D) specifying Unix command=E2=80=90line options and frequ=
ently
            used in file names.  =E2=80=9C-=E2=80=9D is a hyphen in roff; s=
ome output
            devices format it as U+2010 (hyphen).

I recently noticed someone on StackExchange opining that "man" (they
weren't clear on whether they meant the man(1) librarian or the man(7)
macro language) doesn't support URLS: "unlike man, at least [lynx(1)]
supports links!".

That claim is a combination of falsehood, misleading implication, and
out-of-dateness.  It's not man(1) that needs to support hyperlinks in a
terminal, but the pager[1], and less(1) does, since version 661 (June
2024).  grotty(1) has offered OSC 8 links since groff 1.23.0, July 2023.

Regards,
Branden

[1] ...or the terminal emulator, in the event one uses cat(1) as the
    pager or runs "nroff -man" directly, like a hard-bitten,
    two-fisted-drinking, shirtless veteran of the Unix Wars.

    (You can leave Australia, but 'Straya never truly leaves you.)

--y2vii2zcdkjimuy7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlJ3xQACgkQ0Z6cfXEm
bc4l2w//Z53N0mDTIuOPkjoCPyOa78cf8O0646AJGYvi63mRyFzdElzH+AGTCGKf
oqGQ41sAlyzVqe3PE+0oUtpurBUQ43OR9Cd5YJHsOPuppbIOwiqflj55Bmey9x+v
so1nSBG4gYMWY20u3yMyWtixdEfFTrC9ip0678t0i30TIfYmMjCTo4UGACw9RVzT
TWO88JkirEoSN45BiRNhnCe4bbkeX1cI+VppxrhkMMDdFVyyMt0u3gBWPzxj+9RZ
FHlZ9RsiXwiJEWSKpodYKQp8HGaYUJqIhUy78R1YQBRc/BEkQ8qc2Qkf1J+cJDPK
jXYyTvbYJP+lQcgVPKhpMHvFOBISWSrsjEEe9+G6OREHg21zzhNs3B5y0NjlMSEG
xGeBQ7UJiJCgCD9IRHoYaqt8vLSBcpxwVyG92tjFvXf8FbgChnavmMbr0sVpKl1v
TO50BiGhKjp3OvBjnPVYYassnn9DNLWA3ibzdFwOLGxzvJnCAfrt7whf5xVPcZ4+
jeQK6zT4XlciccqSM0Kk/6YeU+f/XAkX99l4hxu5xEQCUIiU6B3hHIm+nEnN+3Gt
KhEytdyVKRnh6JZAD2/e0dEUg3HWcNkGCcDK0Q4J5yMdiWIkqbkTTIic4rIhYBNL
BhRCxiAZbSJnosktvp+5aw1aTubcLYAG9S9qDoF+DDcRJ/nbApY=
=QHeH
-----END PGP SIGNATURE-----

--y2vii2zcdkjimuy7--

