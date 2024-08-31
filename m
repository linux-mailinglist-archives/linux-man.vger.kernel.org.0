Return-Path: <linux-man+bounces-1745-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F17967390
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 00:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65E481F21BD7
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D116514D42C;
	Sat, 31 Aug 2024 22:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvBIhkiV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAB310A3D
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 22:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725142683; cv=none; b=MwHB2YupXmbaMjy2Zbsp8+TuZ11U6GrI9sv+BC7AQTrbfuau6W+oLCKYnKkz5L88tbugwPLHq6720Mgn4FYFUlhOk7VpQyKDFwoiRvxWVjzyeKmmVswQRi1DE9E/fdl93TKx20YjRZnHbBMz0I6gkknIDTE3wsy14wa2iPQixqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725142683; c=relaxed/simple;
	bh=5EMUYg4AgBYPHcpTZsWaZ0lnqTgKzJc33d4Vlabsmyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FNJWqaM6e2z0UypwOpVHwtaB+Y416fbYYJCJbv6YtektSJCdle8Kr2WTNc8h7Hl1Og+Em0nVgdeAXcM0onhY80UGeLEaqfnwjHgIffB0BPqYDii8kgFyT+1qzgP7H9ZzWuzy0DtGYDNe9YhyuEvcEGbNzll0o5toXHI+E0HiRv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvBIhkiV; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5df9433ac0cso1963435eaf.3
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 15:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725142681; x=1725747481; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5EMUYg4AgBYPHcpTZsWaZ0lnqTgKzJc33d4Vlabsmyc=;
        b=LvBIhkiVk5U49bZAb1Q+77WlbfzsG8MaiExNGIg+DE7XF3yJEqZF1uPQgfsIfEHfSe
         pYbrjPxPxcyTZpFnqarr6IjTyZyAvDO/G5Okci2ccfDGxcNL0VhtGdKzK1nTAJksxhsc
         VSBq+OAviv3ssPztZkPgcLXq1yDJ+eTe0bl1ybije9sxElVIXAiOlXqhRw5o96Y9mvu4
         QaIyg84YewifvA4M8DK3bvLIiwKjHZKw6t5KRhvNUfYIJChiLTyJcqcz8emrFLXKCFKC
         Fc0+Zl8tAOcet/vt2raPO8SJLN+4263M/H7ImHhN0B77RXPq7m4ADynqdR6tJHoxDRvQ
         Vfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725142681; x=1725747481;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EMUYg4AgBYPHcpTZsWaZ0lnqTgKzJc33d4Vlabsmyc=;
        b=pJzwUpY6gd2UgHGXx/se3CwOR5Kwk5f0YgUdJM/Lxd5tmdMEN9kUJZOZgzAYjIIK2B
         bf/8+RmuI5KTeZ3NgE1eC3YwuQvAIaVja9iw+/H0fgAoiEAKi8P5biA8wDpNnfGKWICm
         ejwF2Cmv0bPSe+1hF5dNlU6cughCiCtS9ZhKV4GUBDXnNCOiB9ryighaOKALyeUneT09
         oPda1PlBwdEvFM5ajNuFtw+kNguaXX6tyY8VTqZ6rwkyEJOnIF/Wbi32/ShnEBuJ5YGr
         iIaueqgmIaqdkAeeswatrQoaUOk9FA0CDfksDo/TwKsXe6r0jX30srLwTiZntTSvpD5M
         JXhg==
X-Gm-Message-State: AOJu0YzIA1esbIr4CaaobI89mVVYOwTDMx6xy2HzzAgIlQQx5Jm66wzE
	gfzP7SoBbRSaB5xG44w8/AH3o3cWb4XBDCeoxHkYttc+HOgzzMAc
X-Google-Smtp-Source: AGHT+IGxViYDvj762EMTHBAwwOgCjf1niHHqMTXVkJoPKuowIjy88+o+p9VIvTffgyP8Z9wfamow+g==
X-Received: by 2002:a05:6820:1c9b:b0:5dc:cdf8:21c8 with SMTP id 006d021491bc7-5dfacfd626dmr7108068eaf.4.1725142681156;
        Sat, 31 Aug 2024 15:18:01 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5dfa0552670sm1122173eaf.35.2024.08.31.15.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 15:18:00 -0700 (PDT)
Date: Sat, 31 Aug 2024 17:17:59 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <20240831221759.l7jkn56nm2fzmbiw@illithid>
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
 <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s3yukbupdv2rapp2"
Content-Disposition: inline
In-Reply-To: <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>


--s3yukbupdv2rapp2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
MIME-Version: 1.0

At 2024-08-31T23:43:01+0200, Alejandro Colomar wrote:
> Any advances with git-send-email(1)?

No--I'm still stuck on neomutt 20201127.

Regards,
Branden

--s3yukbupdv2rapp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTlpcACgkQ0Z6cfXEm
bc6CJQ/+PPSXwipG/JZsCUzjSCzl1SIoxaiDJQ4OqR+WwkIZ2vvbVobcysY/0u3V
NtTG0j/uyCpkIbcoiPnidOkOOeVMD2pBnvrpxdKcC/vXUYSOPj9yeW1JV10lrwmR
/imT2PtEZ677ZQ5xM0hy2EZpG4AqrCwq1fkutN1xYvyybSsaOFHgSs4UeumW7L+i
JtTVXxkN9D43bBT8OzRq9dbMQa20umPp9pyZN1/S1llhwnypLx6qG6ZwoXidI1yP
0uloTBQVngHcyWQ7ydmMlsy9Frb35koFsH7WA/yz5ZnDH5pR1+R21wubo27RkLf+
3U9M8Zzx7P6Ab8GmqRTmupld1DKjBexfPI0wnY7wXMusmgllSNtZQHNhZX+uw0Xc
j31uYvvIP4B0PzSVkJ0ORwhjs44X4D0EIw7RlG80qQN5K4bdruCd5GllnCmCkIwj
V/wV8Dt9jq++Sc3hjvphGOBGkdmiKdCz7R8GqYQKe4AJvltRIHdmtFHm2zWnlCpt
HyB5sW+/HW8N50rNuBpYDus4AQscI6yWnS2kPIehLHA8JRyWZplozyfvi1+9xBT8
ayK7cz289mWmQSlulsrBz1svAOfzlUMS3S42s01sjGPVc2WZyOG+Tc62F0f2rSSG
vHammwJ2p9IJVGWjxYbg26NXdPgnB4b/ClJjjVki/lj+Ks4VJng=
=CHHH
-----END PGP SIGNATURE-----

--s3yukbupdv2rapp2--

