Return-Path: <linux-man+bounces-3231-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C528EAECADF
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 03:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5EE57ABA55
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 01:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95AF31BC41;
	Sun, 29 Jun 2025 01:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GJ1sX9p6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31FC28FD
	for <linux-man@vger.kernel.org>; Sun, 29 Jun 2025 01:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751160208; cv=none; b=cd05r4W2G7p1NcNy+MUOJMYj2Z8okkIc+qAkYH2SiZksGLEbw3WAs1NMSE5vbd5ypbS46Y289v6ijB0PBr2X0YtHu2ReJt7le6OQwC1StVeet5NDzGPrKiYi2XInax/AXKFviv2d5ZHT0rqxYLBrgtP+q6U/+a9U+xg/+MpPpN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751160208; c=relaxed/simple;
	bh=7nfPNNQuLVBvzOGKk7L6C46olpDEO/mcz8TfkW4qg3w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kx4YDh9vUdu9/qhkVSIObHLrCai3mhiB+3Sw1sqKJouvSr6iGtE28aMg5cfc8DfB+NOkekpIYs3E6IaWFmhnIxEgXOyK3OudsUchcKmEO3PiIjuSSbabyGS+coSIl4SGswPQb2TvHc2Q7PvgGfeUIiYOX9ppV9tG5xffxGP3MVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GJ1sX9p6; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2353a2bc210so5985275ad.2
        for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 18:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751160206; x=1751765006; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aQ+660R0FeaPYBebPgJ0ItS0wy3i5xQlqrUBGUe00xc=;
        b=GJ1sX9p6l8owuwNnJwogMeNGCaJ//6L0vqyzY0LM5+4t4U44TAhvps0+sm4dviiPPt
         8OUn5Ko9Y9OXl+D6qiFwDr6HMMdRlLbOHRt7N9W9T1XE++FQhDfPUl5uh5PtjMrzFTVO
         7wvelxMIZOU1uDYNYIhB4vA+T8euwbHZuB+Ajtg6BaujkClzjKjghka1Gz87AAKfdc5h
         ri394qv8dpZt9YYVdk/sJDl2v9pAqWQWPVhFps6UiRItcHfIPPGyoKLWMgeH5JLkS+Od
         8HVrf2UMe0bOu76WJMF/MOJ2S27V11BfpcjCDGJkxm/pqseTCkhkp71uuTCN6KtWKCsp
         MP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751160206; x=1751765006;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQ+660R0FeaPYBebPgJ0ItS0wy3i5xQlqrUBGUe00xc=;
        b=gb3duYkczbz0Xs06SDlY4gz8AH0F3/HQ8EJC0JBCprNXBchWri1cfc+znafDDR3kKv
         ygL5oHVe7kkb4TyETG5/bm1lxmIi8prCAHxd88b4LaUj2d/TYQ+v1edSJ1y26O/hPSwQ
         iyrYpdCvrZ6UKbYJjmZxWr21o0WwuvqoqSxkPPviVq0o2USpViZJ5J3KyRfnotnAOf3R
         62MJq30PmbbLXYJAX4ctvuUC7+LM7Tdic9+O15lNMQZcRfJIb/4QizNMjTS1EKlapFZd
         jmx+b7dm6GePf8kgx/uEhLZOq5V4H6o/PkMAukE9dTkJjbijhTJ3zOoL3w5PGs9UIFpo
         qJsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlmFJxbI/pe+I39cqswG4LyIkMX2o2LHE2yhwkxTdVst9b6tXFBHtoXDerH2ANcO/1HuB8VkL+ZQY=@vger.kernel.org
X-Gm-Message-State: AOJu0YwOGW/jSTAc3Tp7z5+bcZFTtUr6louBTxQ66hwgJCQaSV19JRYE
	ODfby3kZrrvT9vttp5uhGBizOvTuH+5+ecuiBvE8jz+4t7iTs94jyjq+FdZD/U7n
X-Gm-Gg: ASbGncuFYiBnC/OYSzXOVCYfUNi4oZ6hEKucNCSpYKycMaWn0UwbF4nKjx4H8y8Nl9Z
	MIHKe+ajsfBa975/BVUO1Yh9g24a+PmKO4cxuA/MoLVZkjI+WhlgNylc+7RgjqwVnQ9++7BQR5k
	NKWrgM9u9qW0M9GRjmmpRYJMYCgnthA42UaypfSq/S6gkHuoImxCQbUaIacEzR/QHwvZba+P3Wk
	9mW2x/X1m2eJUxoxhPzuEQX4bnu4U94Jw1erm4u1D28Q9Jho1uxdRMFvarY9gYRe4ED13/pzHgG
	SugR6cg5qPNpSwo0j+nid5YfUkvh9Q4g0GbFxg62+a0=
X-Google-Smtp-Source: AGHT+IEIAOzMGGn0KMnnTdfgA9M7kGpk0hAdxn7fJxpuJIWhqJ8C2/nAypKKs5oWGAUuckMid2jIXw==
X-Received: by 2002:a17:902:f545:b0:235:ed02:288b with SMTP id d9443c01a7336-23ac460523bmr113911925ad.30.1751160205751;
        Sat, 28 Jun 2025 18:23:25 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::5ef2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3b833bsm50778985ad.180.2025.06.28.18.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 18:23:25 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Brian Beuning <bbeuning@gmail.com>,  linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
In-Reply-To: <gujq6ijk5kmci3n6rykbzpamb3k3ckn7ac4xzy7i5svcsxfkyl@crbjc5zamglu>
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
	<blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
	<CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
	<gujq6ijk5kmci3n6rykbzpamb3k3ckn7ac4xzy7i5svcsxfkyl@crbjc5zamglu>
Date: Sat, 28 Jun 2025 18:23:21 -0700
Message-ID: <871pr3s5me.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

>> void
>> main()
>
> main() must return int.  See the standard:
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#paragraph.5.1.2.3.2>
>
> Also, the () syntax is rather problematic, and I'd recommend to always
> use (void).

The '()' is not problematic when it means '(void)' as intended here. The
problematic usage is when trying to use 'int foo ()' to declare 'foo'
with no parameter type information. That is valid for all standards
before C23, which changed it to mean only '(void)'.

But like you, I prefer just using '(void)' anyways since I find it more
clear.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhglYkACgkQjOZJGuMN
fXVvjA/9E7ovC8rDHMincynzay8DOXxFnw3zg/dzG2SBVOYaKMJTW74a+eQ+oBZj
NpeskxTEVia9iEPkm+ZHyMkKUtb8ZbL/DDG/DqTTO80qdMl100K07mlVdSu/ocbC
xb9TmTDgsnA49n9H+NDyZbPxVn3ANHM/NBe/OX6BfnZ7RBWgLwBoy4rcxyfwOBP5
l7WF9UlPVIxekc3xMWROMB7VZV/RH37nyopdXgLezGthlNBgT+kDws2TsPsCOQDd
BpS9zcbJZmsX2cNCRbe2XUiUB9FEUN65vl6Ml/qxr6r/8xrt8p3AmacnYBaN4vH6
Pu2fVMCiC3SE4aix2dRQoxoGcpO35jv/pznQEb3PkuUwpLErIcpwoDTuxN7Pt4pg
rSdkJKveKOkGIQy+FlMMazCNRFMQLShZwIR3dSNI4vQSm+1Tnf6Ip2V2xXhsffr6
h5D0EtUxUhZgKMBVrca34NYJlUi2jzNqYvLHmsdhxzn6Je+miOxWlJuCotxmhGtl
LZAJVSvFhhS7fkXgDoQPGnOnDFzkaquJSlPnzE9C6p4WhB+DQVwwqHc0WnC9h+J6
GpECCUrXNbpJKZNHf9SUd0oEsJp8RVcxdBMGhbIpfAwOY8bbSQTOL6n9ij9cIOlt
iXx5iA8v3PwAP7DN14GM8VQNGUL4MvUgp3yT7fzmOkopFkQNsMs=
=OmlA
-----END PGP SIGNATURE-----
--=-=-=--

