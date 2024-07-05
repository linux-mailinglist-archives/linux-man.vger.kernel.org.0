Return-Path: <linux-man+bounces-1340-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 721D1928E12
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CD391C21C82
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F8F8175B;
	Fri,  5 Jul 2024 20:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BCQUuO71"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397F013E3EA
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720210550; cv=none; b=DfrCAHJtXd1KLg8TJ4VWp2h/JVjZYuLTHWMmLR/fd/arWDnBMhwYVFdNJw3tsMDSyNPayBKTlYVr8NPYa8K5o0k2jGb5DyZ0w7Oi7GosPF/fVeQ95cePGmyC+5zGmx1zN9aID0yMN4VknNeusaBnKdNTnmUn/U4Nb88kganvOHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720210550; c=relaxed/simple;
	bh=Ts+ZWT3hKmm4aAytlNkFz/yOYvwSLTnfa8pxBzKEgsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EAxjNHlU5HrlQfDJtuIlgRfFMSiNVUf6shTYmkxHyCW3sBBKaqcNYAgfkDvBMJ/HNEGND2fnELgNxpvYFNVN9P5PEpi9UjX4qLTNIU38wub3SHIOxLqj8V6ovBUFgSy3fyfeQY6rAHp4ojwLvbmPXGeEtQ5yuFjTl1yOu4Q26NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BCQUuO71; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a77c2d89af8so193013366b.2
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 13:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720210547; x=1720815347; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kswwPILEg6vfDkyQ3r2woUf6EnbU0NIgK4o/11meqyw=;
        b=BCQUuO71xbEFLQfMtNAy6UgluWeAqNXlTanemcUR9ubxZTNppeKam/SpX5CnQPyqtb
         AIAmHRPL8Wr4FG+z46mrU2OVRI0/88CJ9yXFYd+Fxsjjr0ag2iEib99RRP+9rYivJjWi
         lgLiVuarvbSKR8LUlAm+D3VsAbyYOgEtyG8Si7FYEPxAvHt/Nm4+UoOvQufc6p9v4QfD
         bFDHvqG5CylgyUGf2OMDlyF9etIPi5Vm7TU2H1ND0IM4wgBpwVJ9o1fgm5QQ0jxUu1kY
         CICmxvPW2P/WILJfycy6px5nyjBu7UT9B7i8g0cOKoPM5O2sJiohqgmw8HovlX9kary5
         WQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720210547; x=1720815347;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kswwPILEg6vfDkyQ3r2woUf6EnbU0NIgK4o/11meqyw=;
        b=YfavSaqecK4AtGjFlCeY5Rx8yMO4sEKwNV/MLRDlB93rTdtyem7jOU18DssRxYTdH0
         yUwuR4IvxmU1mL3bOdztDFpD+OEYr6dl4KapJaICdhVkxKk4Ic+XHR3lMnpxhrmC2zY8
         /hbtP6FEt97wy8vI9xs9/GsgUAVWV9YhnORUy0Egebnc2w7j7u5+JyA41vrXT9CxUp6T
         yo/qFgWGkKshTQ+2Jv6y13IB41f8ff/kQxRS28q9nH0JONCaDt4lgycz+U76pqcGEVQZ
         JllR47T0m/9/lJz8/eAJW4azHH0TZWmpxqUBP5oMWGrfxSzQJf99MeN5F754sqqyDbGw
         U4ug==
X-Forwarded-Encrypted: i=1; AJvYcCVsngH45BNdJIifAVmj3ssU0BL0Gzn8ED4FDxG8IkxmFF1LJQ0EsTawXflyrxT49miJQwhsrCpWqFFTyZe5YcBq5gES8o7VvRoJ
X-Gm-Message-State: AOJu0YwB+f3Ki+FHBJq8of1mButLKK928jpBnlYVNUDyY/Jv56mJ9SDf
	ApQ9ON89yPc3WanXkIOrhvT4979nSkphNWXvaD0PmaaxHZ32sbl7
X-Google-Smtp-Source: AGHT+IF/6cbKr2oNv6Z6PQXdahKF3Hap21IpfcncU25zTM6Lf56abhvfy7Mn1VFNygjHJJJZEu/7cg==
X-Received: by 2002:a17:906:481a:b0:a77:dd1c:627a with SMTP id a640c23a62f3a-a77dd1c6ee4mr77290366b.8.1720210547172;
        Fri, 05 Jul 2024 13:15:47 -0700 (PDT)
Received: from t420 (net-2-37-91-213.cust.vodafonedsl.it. [2.37.91.213])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77cbb52c9csm84711166b.210.2024.07.05.13.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 13:15:46 -0700 (PDT)
Date: Fri, 5 Jul 2024 22:15:44 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>,
	Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>,
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org,
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>,
	linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>,
	Richard Earnshaw <Richard.Earnshaw@arm.com>,
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <ZohUcLoJbi-A1JvK@t420>
References: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
 <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
 <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

On Fri, Jul 05, 2024 at 08:52:30PM +0100, Jonathan Wakely wrote:
> On Fri, 5 Jul 2024 at 20:47, Alejandro Colomar <alx@kernel.org> wrote:
> >
> > Here's 153 in N3047:
> 
> That draft is nearly two years old.
> 
> >
> > 153) An implementation can delay the choice of which integer type until
> >      all enumeration constants have been seen.
> >
> > which seems completely unrelated.
> 
> Because you're looking at a draft from nearly two years ago. Try N3220.

That is 6.7.3.1p3:



In what follows, a pointer expression E is said to be based on object P
    if (at some sequence point in the execution of B prior to the
    evaluation of E) modifying P to point to a copy of the array object
    into which it formerly pointed would change the value of E.153) Note
    that "based" is defined only for expressions with pointer types.

Footnote 153) In other words, E depends on the value of P itself rather
    than on the value of an object referenced indirectly through P. For
    example, if identifier p has type (int **restrict), then the pointer
    expressions p and p+1 are based on the restricted pointer object
    designated by p, but the pointer expressions *p and p[1] are not.



Which would be the same paragraph of the same section on N3047, but
footnote number 168.

o/
 emanuele6

