Return-Path: <linux-man+bounces-873-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C36208BC16D
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 16:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F06C281F05
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 14:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E272BAF6;
	Sun,  5 May 2024 14:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IG/tAcW7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777D7156E4
	for <linux-man@vger.kernel.org>; Sun,  5 May 2024 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714919554; cv=none; b=DL5x63fuHfwqUoqZYa+IWaRjKMiBmheTX7glveycHdF9QXGcRt01gAJpoqNkesLz1V05bQcF76Dlfm9EbVbz+HwKlN/Cmm0DrfTrqSfNvHrZkKXiDC4kjBqVW+mnXaijhRPUWzEadxeCEXAr/e9V8qXHY4Tiqvybg1pDP+dp7yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714919554; c=relaxed/simple;
	bh=VW4bRvTjfbNqvaXJYa5Zb4FFWhQ3lny3cAFL/w38D4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKKH8PtD3KyGXoGCU8e+/Q52YyVYySD3eeiUw6vbga4CS9CXEYdZnzsqKWCqkYazI9SVpWAJvrOokreJl5ZE9kyWF+xjANpI+2JayqQ6IyUUTeZ2h/fLPme4xJGX/xEOHavwof11VP8Q6qxYUyn0WHEtF+p2vYSPrltBFo4H7kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IG/tAcW7; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6f03a7118edso409388a34.0
        for <linux-man@vger.kernel.org>; Sun, 05 May 2024 07:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714919552; x=1715524352; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zzs+Ld5qIutdndqW1dDX8OjzxQwW8CUxu0pTt5InjoY=;
        b=IG/tAcW7dXBO524GdZLeuHy36nT2aAEaTU7tm7W8o4nRXC8hg/h4mEDJTYU6O61Ur9
         Taha00yVv+dsBjTiHJYZ99ShKT35qXgu9MGG2U6ma3Yy87c6JQ5uAc5v/PeySvI63dfC
         dzpMFTnUxjntgh0mZ0RkA1Z/dgaYjZ0r2SNiFBySyt2DdyuQbvZ2PT0a9f3hlLGBcwZ5
         JROQJuu0bU1bBYI428D1Iaj7OyjymHJ4/JRjm1DH6JDaqcRX15F0rD14vWSClbGmOln3
         hut1UonOvC89Oac5O+E4nySlq90KJCWWNy5Ii32M+R+XK0j5IPrybMNAkRqsbGuuML8G
         ivVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714919552; x=1715524352;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzs+Ld5qIutdndqW1dDX8OjzxQwW8CUxu0pTt5InjoY=;
        b=s8Gml1vczxNyK85lMrFsUOFH9DuVDfRGUSi2ExMeCMeAfRTogoZRPzhgBysOzn8uRt
         SQyLp0pOtdB+G1dKWmeHrZoRlDs61ISNCzKmMTAojp2wCT/dYm3/glDI2XErmqqAsd/t
         vGQ8CnyGgqawOEi2rBZlg39dbLR0XnVTUKVAo0x39KkH/BtcWa0rnWw5Qg4aEz8U4PTp
         Eul0N9MCp0GW/efRQdEf9bb1f2+E4wBZLkuO6mUVkbulrNZHSxC/x3R84U9fKOR3r0wb
         +u15MqzBC4Nu4kE/0gcwRrT+Q1RiPT71n/1/seq/Go5jOkdfHQwbe+1AVBUBGlnjVAfs
         E0sw==
X-Forwarded-Encrypted: i=1; AJvYcCXOz/SmiIiNfjXcrVbkABQFNxzWEKi/blIVdcz42TEKR/9w9VVcfyZ8+JO21zqGmaJUYw+s6k+zTrP334EouAth1F8nUqD5cDXz
X-Gm-Message-State: AOJu0YwZ3Pwj6Q4VGzNf6zglcf5XgG30zoE9lLVH/UH/W4f9X7uExG04
	EeNsr/slMayH0z7EM56ltBzTknUdl3U5xl+jbl4lbhhx1sCujhpQ
X-Google-Smtp-Source: AGHT+IG0RxaleS++ggT0qVEJsUXOHzLEinvJw+9FjRJB8gHr8yrqp6D13TBsuiCkno5HHuJkb0mfUw==
X-Received: by 2002:a9d:6292:0:b0:6ee:360e:e11d with SMTP id x18-20020a9d6292000000b006ee360ee11dmr8555045otk.35.1714919552415;
        Sun, 05 May 2024 07:32:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p14-20020a056830304e00b006ea1add9346sm1488327otr.4.2024.05.05.07.32.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 May 2024 07:32:31 -0700 (PDT)
Date: Sun, 5 May 2024 09:32:30 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <20240505143230.a7su5ika5gxccv5p@illithid>
References: <Zjd-jgQ_VFTidbnT@debian>
 <Zjd_IEmita152Zdj@debian>
 <20240505135453.4rxsqe3so7347mli@illithid>
 <ZjeTilIR86sBYrtI@debian>
 <ZjeXh4IjG0ct_Z3a@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="othsnlnt5vi7ut6v"
Content-Disposition: inline
In-Reply-To: <ZjeXh4IjG0ct_Z3a@debian>


--othsnlnt5vi7ut6v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-05-05T16:28:23+0200, Alejandro Colomar wrote:
> You did s/vger/lore/ and now the mail is bouncing.  :-)

Whoops.  The version of neomutt I'm using has an annoying problem; it
won't let me group reply to tagged messages.  I haven't looked into why.
neomutt has other annoying bugs, like cancelling MIME-related prompts if
you backspace to the beginning of them.  There's an old saying about all
MUAs sucking.

Possibly everyone but you on linux-man has me killfiled anyway.[1]  ;-)

Regards,
Branden

[1] You must be >this< geriatric to get this reference.

--othsnlnt5vi7ut6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmY3mHYACgkQ0Z6cfXEm
bc7x9Q/8D+6iJ+zBIXUP2Zc0kcUsGW7R++M3dq2ZY+BNkNlZAUfwYmxIdAJWqrZk
H05kRWJA+ytCBwrA6/FeTQQziDusVhufbZwwyYGKNlYJDAwAo7fBAR7ApMymHqU4
otiqHc2dx0I3le6E+XDmARGf38elnJdWuFjFhuQPTynTeF8sbt7tMJiMI/0mWGmO
uo+mblbVnHifwpu0EQ6IgobhdW2BXv5kdqZt1p3M88YUjgGkIcGTQ+/PBp0QgnL1
PikgSdsYFA7UqYjMGW6RNILynC/44wVg2ba1Me1KlRYMMejZo3l9dTlmrPAFEgq/
qaQt3zGf+qbfRFq/9MQ1uh0B4zQdEzWQLu7aRo2y5emUnIXKnOEAaL6ztPsK5ybO
4AhFROMQoiUJiFkIcXiDzh/RbNytZCxDvZGe7qYbF43qUMWNdoWNlA/07NY1PyNv
MVoMMke1hNxFhZM6qV77of+eOJbVC+3ga5WhrZYwUsqhwu1E2R0Wcfhfna78IQV7
2MHjfkR12W2X1X4CYpFHJBO4igS61ceSin37wH8EWK2AHNnADKcGG1XnyBWMlXVl
Wb/xeXXUrO45U2FLXlhwdqarALC28HWPXmPuTL2uZdGssQMWMyIGx/VfO4Upj39U
kIOcF4WFZpszcNDGrbV66d3+ud6jbeN530swj4w+6I87JD7uSSU=
=fuXC
-----END PGP SIGNATURE-----

--othsnlnt5vi7ut6v--

