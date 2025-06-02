Return-Path: <linux-man+bounces-3076-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C30E9ACA995
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 08:49:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C641C189A063
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 06:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A037183CC3;
	Mon,  2 Jun 2025 06:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EkQRss9J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F0A156F45
	for <linux-man@vger.kernel.org>; Mon,  2 Jun 2025 06:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748846983; cv=none; b=fY4xtv0tJ4r2VflK5g3yqVS3HIgx/vzuPzbnsAwgJmEt9ifeAjDgJK+OpgaqAQlpUbh77oBujekttXQvKZKL2Cr/cNDa1UCKeqc1gmOWq4TaMOqRAxLd3IJpUXoKtb9fP7Q0jirDmAiv2p1lKVc69yZu4lgI1QiKbs2A3VvXIbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748846983; c=relaxed/simple;
	bh=qZsmKcNhdklE0Wh2hwbzFlHo3r3ZsXAPI4y1UXtMjIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YikGCom00HFQOzm+nbC4420mF0t04p5koOhnDBULsTZZWcBu4J9XBthi0EYYZWsi9NjOINYx48fh6uQrtywpZH9+0mAxHTRajnaD9cFvNkhwxxWxdzFoswoQT8iaoUCoj4h5kye0eMZr9Cx7+8QrXxYXfnlCQmChmHVW41FJyh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EkQRss9J; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-401e77e5443so2302789b6e.3
        for <linux-man@vger.kernel.org>; Sun, 01 Jun 2025 23:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748846980; x=1749451780; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4LBdEmH5Jgxd2KvPJRaIQtTVpQUNMZ2w5ntTUyiHmqQ=;
        b=EkQRss9JSV19I6nIvqutn8Ym23OsR+Vg3dIwkCUePveP7K5QzcQZPe2jbgKXPWjql6
         bMpdXwpweEQ8ffCa5LFh6jjt63BrQ93k0IaTelOV56INl/lP+W95UFLqiaKeQmQl0L+P
         OTvzSOpYb6IFGtWxvJ92ydUXwMfIYkxz0Qu1IkY5ZbxdZ1lBjxH9qNweZvBCTUAosLOR
         XHkdW8D/IYbiJP14KP4Zw44pOfRFJONfjh4qfoNOydzj0/0ucMd55liJDntKO63y701S
         AWH/eTH8C7FaBPCcECxrUtyxOv/f58mbH6/NQvmpGpbT6DMREQbXR37hQmHIi2HTOEN7
         kPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748846980; x=1749451780;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LBdEmH5Jgxd2KvPJRaIQtTVpQUNMZ2w5ntTUyiHmqQ=;
        b=i2g029hiduQ7Ggq8kOOXsU66ntm/pNqOEhEQfLtbKixvm3VuWbDXZMeJGxiW2Ilr+b
         Y7Xhg93/dkpZYDB2L1aZnyPxfZSL8qIYfyusERYhuoLbFIq1JUWNn7uZZ/xm43x1MakX
         Nv78qg2lXXd75l4QUSnaVP/VF8Tc+KXYKf/9Ss3a3gslQ1dmARUSsV6k7EIAgdbNF3t9
         5NIaHArekK8fpQ1cc2GcEiTUg24gvb8Ububbdq/ZbMyvS8Fjyniee5JwaJ8smiYPI9Z+
         UIcqYFVL8+VkMhy0AnAxDVNu1A1kFR0EOCoG+N3NA8b710FGdGRsbHCwhAhMW4Q4N9qx
         /vBA==
X-Forwarded-Encrypted: i=1; AJvYcCXDfATCItucAyN/s53lkqWBwzGzGE61xpsO5QfQDnTTiHdNaC+/qykSiLaA41gTi6gt0I9NVeRX5gI=@vger.kernel.org
X-Gm-Message-State: AOJu0YwGPIX3mU/u/Q5+VL1EVelXwfc4lLJt6EunDOpUTTrrlI39ZZYU
	h33tY45/enI616Almgfpfz53dK4ffOGF9KBUQt5UFAPF7yZlih3d9jiyzrGM9w==
X-Gm-Gg: ASbGncucE8f7FRI8SIjuG72rpP1ycjZA0bGxT8yMkNcv9tacaSLqoNiT3L7/Fsitzsh
	qwOp5nwyqbBKHnws4mEbtCx4t8sIXg2f0TuKm+U2bGYHHQl+TJpql9NEtBcCJBj97JiUizrODa2
	2UyEDekThEYFzedw6T9W82vfVCiLsKPS7fslhYEOdxn1Wt5dyVVLBlq7e6THRurozD+LxNkFdlt
	UzuxBvNWpWRUWwrsAEcu/oaqvrnp0HqQQ0Bph2K2AaLwo9T1jwHOgpl1ZKg98SEiAl2NH2qMf7A
	JfG29jA9/oBgKvJhReuLX5IY3SJMHJniZFt12O6xQsjuHLefEz6i
X-Google-Smtp-Source: AGHT+IFFP5oSLRcNyWZnMnmUuMUfh0Gip6qkAGyxFnNkJBxjBfCHbva01HDLU4vk/yL94WQ/k0eozg==
X-Received: by 2002:a05:6808:6c96:b0:406:77c0:1571 with SMTP id 5614622812f47-407a65e40c6mr4769251b6e.24.1748846980369;
        Sun, 01 Jun 2025 23:49:40 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40678ce83e1sm1370620b6e.33.2025.06.01.23.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 23:49:38 -0700 (PDT)
Date: Mon, 2 Jun 2025 01:49:36 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Joey Hess <id@joeyh.name>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: on "bricktext" (was: Paragraphs formatted differently depending on
 previous ones)
Message-ID: <20250602064936.wrizwxkcdpx4btpq@illithid>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
 <aBUTF6SphOspqAKT@starship>
 <20250503001407.fduziqcvc5f33azs@illithid>
 <aBjgpgYzrRKsWn6s@kitenet.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3xp562rcevq6yfha"
Content-Disposition: inline
In-Reply-To: <aBjgpgYzrRKsWn6s@kitenet.net>


--3xp562rcevq6yfha
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: on "bricktext" (was: Paragraphs formatted differently depending on
 previous ones)
MIME-Version: 1.0

[probably getting off-topic for linux-man]

Hi Joey,

At 2025-05-05T12:00:38-0400, Joey Hess wrote:
> G. Branden Robinson wrote:
> > I know this concept by the name "bricktext"; a guy named Jim Warner
> > has been practicing it in Git commit messages for the procps
> > project[A] since at least 2012, but if I remember correctly he was
> > doing it in his emails many years before that.  I learned of the
> > phenomenon from Joey Hess on the Debian mailing lists over 20 years
> > ago.  Joey, do you recall more details?  Was Jim the person you had
> > in mind back then?=20
>=20
> The name possibly vaguely rings a bell, but I searched my email
> achives and didn't see him back to the mid 90's.
>=20
> It seems more likely to me that I was writing, and just happened to
> have a paragraph almost perfectly self justify and then played with it
> a bit.  Or I could have seen it on usenet at some point. Also,
> .signature blocks commonly were formatted as bricks back in the day.

I found an exhibit of bricktext from 1998.

https://lists.debian.org/debian-devel/1998/10/msg02449.html

Regards,
Branden

--3xp562rcevq6yfha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmg9SXkACgkQ0Z6cfXEm
bc6/cA//V/QIlSItr1MwaAcEhFMSxkPvCuKeOLUDwd0N82+KFz55UhTDlnQeEVWx
za9rrf3cl8GVxqBAAtTfrDdpTx8Ps4BJAtJulEGxPT+w8y1YpI3kqEKMQ6jutxJ2
cxoI5MqWJMLNWHHTJMdwocqsMyoJVuTBl4DZ2okaqvuhZGusEJikDibkora7Ghwy
SEZnWqMbXEO+OcKWF+50UiikIj1jnBUfJgAXlzrrK0l1H7U1V5uUAQ5Rnl6OOxDk
rRdw83BovQkrfjmOMjtZFNJck+PpYklQI0LfwJ7MTpaaPmapsjhjVpmKfyU6xqKx
vnaTCwecqALIL8tuF/sqOii6PF/UVGG7X2JMZvQJmYvXmJNQiW/RnCPyAOj1pADF
JjbnKFNrIEw/A8JBm6QHiSxTu5szbIERXW2VR+yml9XMUuJMYGgW+YjqeTja7JTv
+6FlzKwp6+BsxImk0C0Ncugf3x6I05vHgrimYzNkz656eR5vLH/9tK7gBpCTNaQU
MIbcHcQv4SuxOVvamlNQ/vB/Y0K2td1GxaXm3B3FGBSEPZ1xhb9wNb7LUYs9Kh3W
Gl4tG1s1I82mya97qUNwkyajqP14P2EgyDrJCOQfz9gnT6R/6YKLtgfxWZdfRbeP
2HiCg2yh/+Sa9250x+cqByU+/j2mlecuDbeeWjsJVHkv8AG/JB8=
=vzTw
-----END PGP SIGNATURE-----

--3xp562rcevq6yfha--

