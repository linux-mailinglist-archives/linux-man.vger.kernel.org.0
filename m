Return-Path: <linux-man+bounces-2032-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C819D04AB
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBB33B21AAE
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DEE155316;
	Sun, 17 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i6gmGKaY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840EA23AD
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 16:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731861353; cv=none; b=a1ADlxFJATcDn3f4qNAp4o997qiO+hcLrneDDipnwA2c4t6SN9YCyDNBXQWidasEPAqZfD5g47DLd1irNFDfXdtHouebI5OvFaBpJcyiLTmzDtVfQl4TzJK48+kv/G9CGAAu1RsJXtwVGarOt3s0MhKmWTLc/+VsSuAsIlIKzXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731861353; c=relaxed/simple;
	bh=MWatXQ7vCnlCkJzq2x8Nn1Ujq8HMJetaiDICWC0WjAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D6h/qcO3SuyJX9zeJP2A9wirQAIlfLWpPkzOv0R3IFoTTSQWdiIUMSEZhrEnO325+MUN2ODC8ykh1DzDa40kg3GgSZCk3QeB7TzQxcCtDQNTdaB+gP1gPEL1zCEOqRHfX6+yjOKfC9bIgfAxAlyKlL5DjGlRIYk/jdbrCSJxtco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i6gmGKaY; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ebc0e13d25so788781eaf.1
        for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 08:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731861350; x=1732466150; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FAju2HrPiKZWU9V/XhKAqNqpUnKGicvB7cDSNvUnq38=;
        b=i6gmGKaYu8bJh3jAjrP/81flB9/pe/460p54tKlFKIi3/Nd2PB2P8mRzKFObQ0N16k
         x/dYuxik/XpxWX4ZWmtUyFzJjyYWvsdEYxRhTR7jFVepQWt3zuJGKiIGJB7GaX57iw+Y
         tUUytxvW9HjlNTToPWewkkPL2hFXn+KQyK8Nrb1jOw4wihbirp7WD4QCFTJSRlc6OlqO
         S9R0ueQVy0C1/CebetAshIdbcH+Pla1uVTKY5yhSeyjbKiJ2ypM0FHZYzzH/Ed1z65Zr
         92A/GSsuwQKMKG2brJYnY8mV4S++O7nFKAICwH3XrAZ4r3pIEIF8Y6WSWA1rLGMF257L
         US2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731861350; x=1732466150;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FAju2HrPiKZWU9V/XhKAqNqpUnKGicvB7cDSNvUnq38=;
        b=Dyi+1sALzRDuw+hf5X2lGTIcBCXm+eI6NfxG3QU/PnILqHyxTn78NfdfWyUUdNeXBq
         XmGLsA6tG1FuMZP4fOTI+DNz1XBYc0rlj2UgkNDKrVawL9qqm/BU7mdZts4uXJFFNe3h
         mQQsFiQrOmA91+HeC9YwSxuGpCv0dYw27Tuiy5DBQPdqNJEFxqRKjtl9dOOg1qt9f4yC
         rg73CYh8vFOzuBkkSBAXAevifuTJWVLWIMrFmc3xn44lZJCX6xHDjLd7125VnhbegdCZ
         PRVKDUtiHCbYyGMDnDXGa5lTk5P2JjnMyPn8Z5jvzZWVhY20v962iKek97e7xpFZY1TJ
         evVg==
X-Forwarded-Encrypted: i=1; AJvYcCVJXRF6KoItda/7TJMHXIfz6Jx4k7KJ2OtcEO4VBpg5E0FjsV0hOAxpqx/yHj2b8eIIkj8/FhhcDa4=@vger.kernel.org
X-Gm-Message-State: AOJu0YxfVfQlBSTZHQmjkamIuRz15bi4zmc/++Av2+7XpxBuQsaipy72
	o1uDpGJt26dQZ3FRvshtww/mO9jZMI9jdFjnE8W4WGQ+6wl41ixR
X-Google-Smtp-Source: AGHT+IF4KJfY6XKaqsrNeTRX5s90vCMuFBlJzR8YukWL6V/8ieWrUjjz9zlFta3fwzKBLr9uH1wcyg==
X-Received: by 2002:a05:6830:6015:b0:718:787:b416 with SMTP id 46e09a7af769-71a779470b4mr8226136a34.16.1731861350531;
        Sun, 17 Nov 2024 08:35:50 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a781a1608sm2081760a34.47.2024.11.17.08.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 08:35:49 -0800 (PST)
Date: Sun, 17 Nov 2024 10:35:47 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <20241117163547.k6cvvaz5xitbvicn@illithid>
References: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
 <rkahavnoaq6iryfg26isqi7rwncw57ihenyvlzwxzt4b5qmbma@vo6iu4jdvm4d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cgoctgr3vafmkfay"
Content-Disposition: inline
In-Reply-To: <rkahavnoaq6iryfg26isqi7rwncw57ihenyvlzwxzt4b5qmbma@vo6iu4jdvm4d>


--cgoctgr3vafmkfay
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page proc_pid_fd.5
MIME-Version: 1.0

Hi Alex,

At 2024-11-17T12:24:56+0100, Alejandro Colomar wrote:
> [CC +=3D Branden]

What do you need from me here?  I'll take a guess and review your patch.

> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Inode -> I<inode>?
> >=20
> > "type:[inode]\n"
>=20
> I've applied the following patch:
>=20
> 	commit f3ac823f7501910031855c1f6e640f0dc5e295bb (HEAD -> contrib)
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Sun Nov 17 12:23:48 2024 +0100
>=20
> 	    proc_pid_fd.5: ffix
> 	   =20
> 	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
> 	    Cc: "G. Branden Robinson" <branden@debian.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> 	diff --git a/man/man5/proc_pid_fd.5 b/man/man5/proc_pid_fd.5
> 	index 2e3341ad8..903063e82 100644
> 	--- a/man/man5/proc_pid_fd.5
> 	+++ b/man/man5/proc_pid_fd.5
> 	@@ -24,7 +24,7 @@ .SH DESCRIPTION
> 	 .IP
> 	 .in +4n
> 	 .EX
> 	-type:[inode]
> 	+.IB type :[ inode ]

This markup looks okay to me, if "type" and "inode" are parameterized
and ":[" and "]" are literal.

Personally, I would use `IR` instead of `IB` since the example is of
_output_, not user input.

groff_man_style(7):
            Use bold for literal portions of syntax synopses, for
            command=E2=80=90line options in running text, and for literals =
that
            are major topics of the subject under discussion; for
            example, this page uses bold for macro, string, and register
            names.  In an .EX/.EE example of interactive I/O (such as a
            shell session), set only user input in bold.

But (a) the exhibit here is more an example of file content than I/O per
se, and (b) I don't recall if you have an overriding style rule for the
man-pages project.

As ever, clarity is the first principle.  If the example is clear either
way, the choice of typeface for the literal parts of it is a matter of
polish, and not likely a barrier to the reader's comprehension.

> 	 .EE
> 	 .in
> 	 .IP
> 	@@ -50,7 +50,7 @@ .SH DESCRIPTION
> 	 .IP
> 	 .in +4n
> 	 .EX
> 	-.RI anon_inode: file-type
> 	+.BI anon_inode: file-type
> 	 .EE
> 	 .in
> 	 .IP
>=20
> If anyone has comments, please let me know.

Regards,
Branden

--cgoctgr3vafmkfay
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmc6G1wACgkQ0Z6cfXEm
bc7enw/8CCGjXSiEphu8FyBXmYLBlEDjlLqBQxUM0mJFpItvdcAur8GIxBA6NeeO
NgobHq+Q3nQbcvKigR3H7yFPAMPrSg4lNc6Z5WZem2SV8i6bcx8fepeD2ivquA2s
vruZP6xvDhy428pTBddb/0M2lw8B3pUNd9ephRxXg9j0IR8cBSzMORanzr9n0cFU
heV+R1ljnUr9KbY/epN7JGj41j/8BHfUEv68w2um/f0SAa4sAxWiVzqlM/CKTsHT
p24S3G6tLgftpf20Yi4Af1771YCuTfoys8k3p5q9STBWiVs2VonlzTlfssBBJ5ci
7Cp4xy8wjwQ6PeUTX219hITcY+/vSiU8tQtOdvVH/IGptgppT2ZOjzBH0mWVV/nr
t8xNNtw61EQX3QvjoD0q+6/wYT+75HkN29ywfewcvNJ8bZVP1GbYUl/+qmxVebsp
9RwbZOhIJjJp2fsNJRpSdrHMbG+sIpwxIPQTz2m/qWxt+1REaxwRVIjzsfaRFDRu
CaD3uMSSVr0rlWji7bK5VdsX+kolr/vNmm7ouu1e6DCOoKsU9/onUPfXC/aq18r/
XKXYsv92MecCQKrfh6BxknvcB640nEldOkohWwfl/vUxf4tCKGllpt3GyNx+XHSW
djR+WVUjleCVvSKFoewtp5rYnhA9py6xcLdaarFAxtxTG/Esnn8=
=tG3B
-----END PGP SIGNATURE-----

--cgoctgr3vafmkfay--

