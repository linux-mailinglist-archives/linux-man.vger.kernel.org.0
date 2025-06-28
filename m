Return-Path: <linux-man+bounces-3228-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC687AECAC6
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 01:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 806ED175BB0
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 23:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39AD2367B0;
	Sat, 28 Jun 2025 23:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ATUhrVlf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F4513BC3F
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 23:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751153927; cv=none; b=oOG3Dbmvq9T9KvsfY5IOuJbezbfHNaugsu+l21VGa/CRTnMi5ILT45iOcAY5/ypdOx8hX+sHxBkP6hWWm+Pqma7bYwC9YdVUuKvlPz8sC3Hgr7sPX1msuns70mG8QpKDCEeiRGQMtH6d/IMJlCF/ZjO+YYiWV61O2obw0yZn0Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751153927; c=relaxed/simple;
	bh=kkrRa/eW3qhJNZzwv2EFHWuQogZF72OzR9zVaUFV6QQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cUPXrciz8yCR39upRE+COtqC2CiHNSb1aeLukRMMkl2azEMf0muzhej6JeX/1QfQlIHGBueXm+8cxi0ebwlJdS7r4osTgP5xHzKnBYpZIDTt01OX4PeFvWBT/NuhGZdCVmEstt0338xFH82t+EEba5v5msVjXRTSncmSm1Gadwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ATUhrVlf; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54b09cb06b0so924707e87.1
        for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 16:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751153924; x=1751758724; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pi8HAlD0Pcb03p2r+z/BSxAMGB5+8O9FPwBLnVgfF8w=;
        b=ATUhrVlfuKFE00P2BxmlodoPIBKZUmawab7/woToJftD/0xM+3zuh9VZvp6YmgBBvK
         touw1M+OUt0KMhloslhA2isJKKoeTG5U4qVw9uu/KxJjFA5I76jCcIzMp69SJ2ro9vlr
         Ca5B+yWMpIv5slDlK90HsRfq/mahWdZkyYZdfXwutsuJPLWcCRrHfO4m91D6Ub82KSl0
         3kJPF7ZLCBji6ZErfS4nQ6MgKb5l5BrrCYfUboY76tehh2oEC2UUeiUv9G+pIYMD3Jw8
         ODmUhByZIPc360Ik7AMgrAY1sDHohaA890Q3eio8mh41vDYFm+zKOIBLtjzdZFUVyGBl
         6fNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751153924; x=1751758724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pi8HAlD0Pcb03p2r+z/BSxAMGB5+8O9FPwBLnVgfF8w=;
        b=HZIkrN/vppPqiUNNbyOSyEDAG6Mp9S7XTZE0kyzQWQsh2dvSodiO3MHvrzZsHfVAey
         m1INlO3uiJINS/G8rSZc18pKQKjghbFm4ixXhSZArVm3ko4w7diMQcOC9Cu+I3wTjVVY
         Ac8CYVdYk+iRugmKLDmAM7kjmanG/xcYax1JJKw7w0RuYxmf1zwQhEK6rjRi/PekbKsU
         83N0AO+bkiAirLEDoDj60AH96669J5d9Z2LKu2xk4OIvdR1e1rGJLivhbbE7yilaeOUL
         +/q/rPOv+FlQ6QdbsbeB0ufWQHZjybHUkRKox+5IyTgEtJCHq3phEjLQuj0X3gEmL/3R
         m5WA==
X-Forwarded-Encrypted: i=1; AJvYcCV4ye0Ly9hfOphqAn+xExtVbmyieYYTrOnMJMZ0ixobhJR4Kwy8TcipKVekpPwfde/RDtkdzRvVhvA=@vger.kernel.org
X-Gm-Message-State: AOJu0YwdNbfX/RSi/Bn4rT658MVs0ENU1t/umnVDRgrUm2nd0x1LGhn1
	m4GVQHL7iCOWIBCM/jzlP80uFcN1k/YC8vKJNpWbzOiNSn5qplng52gsAJbvFZ5Cr+EIgIsz+Bf
	X/1M/JOrPuAFD6MgUC0Nq/wVT1jNzrbnrnA==
X-Gm-Gg: ASbGncsRSNo6M9YdIvu/KFoskSHQfjzJaaBSfgvU+aZcdSkzu1j0lIgydX5/WCjgPaq
	kkZy/f03+ngZ3PJi+uvUoAbnkctMaXS+5uslFICHZe6kB9fWyr8szz5B7ShAD2ojJNEXDuQkDy+
	Ih3wvsUvG3lb4gR+s6ZeKn7ibOCV7y/UBL3f03VAV+xXItcOFi29NTQtsH2YiQ1DsoP+qGBg9Ao
	w==
X-Google-Smtp-Source: AGHT+IE5697CXb1bx+JJg1O4bd7K+SJ1T2eWzHRIM6r/XTQLySgL2l123iTMXox+uL36eo5H7XdYkVa/4yaUCIHloVA=
X-Received: by 2002:a05:6512:31c9:b0:553:a4a8:b860 with SMTP id
 2adb3069b0e04-5550b74b8fdmr2893188e87.0.1751153923477; Sat, 28 Jun 2025
 16:38:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d> <y3yu5sod6yietgrfyjiypid57ljoafrhfhhz4evqfxuwbyhvvx@g6oqdjarywgo>
In-Reply-To: <y3yu5sod6yietgrfyjiypid57ljoafrhfhhz4evqfxuwbyhvvx@g6oqdjarywgo>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sat, 28 Jun 2025 16:38:31 -0700
X-Gm-Features: Ac12FXyvzr2nI4687hterJLh4b3Xb2ucDA2Xv3LIulkZhCZBHzRXQRGVHyzHVAk
Message-ID: <CAMdZqKF7NeUfRCxW2rj4KuJXGOx-cRqXsk9qTcrcWKdKnoY_UA@mail.gmail.com>
Subject: Re: Forward Deceleration Changes
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Naughton <mnaughto@redhat.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Content-Type: text/plain; charset="UTF-8"

Alejandro Colomar wrote:
>
> Hi Mark & Mark,
>
> On Fri, Jun 06, 2025 at 03:05:20PM +0200, Alejandro Colomar wrote:
> > I'm not going to release these changes soon, though.  They cause some
> > minor temporary regressions, so I'm considering when I should do it.
> > But eventually, these changes will be released.
>
> I found a way to do this without a regression.  I've pushed the change
> already to master.  Please check that you like the pages now.  I find
> them much nicer.  I'll try to have a release soon.

This does look better than the bolded forward declarations; thanks for
doing this.

Honestly, though, I think it would be even better without the forward
declarations at all, which are just repeating information that is
already present shortly afterwards.  It may not follow the proposed C
declaration syntax, but the Synopsis section already does not match
what you would write in C.  That is, you wouldn't write:

       #include <stdio.h>

       size_t fread(size_t size, size_t n;
                    void ptr[restrict size * n],
                    size_t size, size_t n,
                    FILE *restrict stream);

as stated in the Synopsis section.  Not only is an array of void
invalid, but at best that would declare the function twice.

What the reader needs to know is how to call the function, not how to
declare it.  In fact, users are discouraged from declaring the
function, which is already taken care of by the header file.  It's
just that the C function call syntax doesn't include the types, so the
types are added using the same syntax that is used in declarations,
even though the reader has no need for another function declaration.
The syntax without the forward declarations is closer to the function
call syntax that is needed, while also providing the necessary type
information.



 - Mark

>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

