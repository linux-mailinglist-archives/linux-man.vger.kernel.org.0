Return-Path: <linux-man+bounces-4065-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC2BBC0038
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 04:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67A63188499D
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 02:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC7038DDB;
	Tue,  7 Oct 2025 02:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dw8Z9F++"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522151367
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 02:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802803; cv=none; b=IktCW4AEfFuDj6gssac+RiwIzlGqKpjAZcmkH3swjqA+q3AlkxynIGHphz8sRn3RyzFuf/hb2FhCGAbasALyWu5irja8c8wUe7WLXtTKvJgMS+ewuhTb/mjeUJTJLEQ+BJnO2F2EOCoZnBcNuRx5dxcSIRBSwHHxl45zGi29nwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802803; c=relaxed/simple;
	bh=y2cQDRVxs0TBquVoA2rVib4O9PaU9MQgq0AiKhcuXEs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ctuLAU8iapiZPJNqKz82yFxdvleoEntJI65JDD7crD7Rypo+DZHabgv3tPSb5ckmiSDsZngrZIPrOPhrPEGKhUEbXvGnINYIlNQ3h3gJwmg6cxtqUrlAqwD1ulRzh6qDLdHAX2b9SK1tp5Aw1YCdgwsYsqypT13sdQeN2LRM5QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dw8Z9F++; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-33255011eafso5673944a91.1
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 19:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759802801; x=1760407601; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EG7LgsJkuNW54TSfYilBntI/64FCUg4YJXqdPl4KRd0=;
        b=Dw8Z9F++i0p5hrzoKo+SGa+0LdspMmwi/WrMMTPLXvqqVAQ33BmP9hhk8J3+259AwU
         +SvttqPCj49umx1qQQ00r0QakRr76Sk7wdtb5YjspTGCXNCmX0xnoML5LQEFRSr/e6G5
         PzBDU49ANtIz3w2zwVrTpO2GeRttt1yfjmarW8LL3pyyG3ui7nXgf8VAMLhI/mTTGbrw
         C+wibOzwB/HbcDgLwNtBIhs3O22x86/elxvQHbi+LQVYcyS8l9R1eZUBWN0EMu5FprsG
         X4uQ8XjdHKc1dVDOY58R+wElJLtXjyt97nyuWTdpbj1h11oGjRxi4EVgth9XN1eKLoU3
         cqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759802801; x=1760407601;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EG7LgsJkuNW54TSfYilBntI/64FCUg4YJXqdPl4KRd0=;
        b=MkOl4OXj+O6byfjaBmHtRbA6CIln1TFbtSnLCl1XdAOS+J30XQTQDfJvXumezZFSxM
         vJN+RSuzU/n0KbXzCWMThUTvDT1rvj6g6QwvHcWMo1z6ZJmouXxmSDImNZePodI8TQuL
         No7OrXdOylQ09Lc+kiFVJtqtDjUYF5f27L64T3yCb1JVBC16CuKBoazALKT3H/S1t9Uv
         CjE5wMsurYnlALIIVn+CSgKGBpgDXqypeyI2kMr8RIsj2OKlBtf8has3u9l+vqLW4Ao+
         9NY1XGINyHLhqVvdMAZMHtrK5lWuYmJoqAGIcGtgYHDegMtaKJezNnqeO6zJI29fxM6l
         MWRA==
X-Forwarded-Encrypted: i=1; AJvYcCVYUYTw6bnMxgEiY6NHQ4XGKBxQKxnq1mytuVUONVhorag0J/v7tHpYCF0DpX3weffOxgS28+ZnkKI=@vger.kernel.org
X-Gm-Message-State: AOJu0YxSXxjlGKfX/DV2CUEqYIQC0+Euo3WbQb2Ay6OMcRWGY1EENWeA
	YwPcf/qx8xb7Kq2kGjqfzmLAEhKyTVL9O/3+vyO4H4pvmDRK/oYjDgMd
X-Gm-Gg: ASbGnctwbjy2hSJ4Xy1o+7MUGo2nKgsYZbTxIEdCPJLCMy7C/vEGQz/VS6g2otdrga0
	w2UgJnxsBjCiAgxYubpeVKGvubzxhl9DPyKcB1H6NpBg42CoXvFtHuQElgl11PiGWUe0AFawwpg
	Ioh+qTTjZqrU6mUFYQJJEWLWOKyzYJmAm/SNWBIWt9fFWxPogg5P/n1Fg3SkmhaSBFlxFM/Ok33
	OVovv/sc6maNthfppE15rr1Y/enP8Blm/QEhg6SE5DKO9lsjFjHWec3qaGbNi1T8zQxXpmvaxTb
	jbHdwGrVbfLnxV8hb/ANshcMRF28HyGy6TcvcuCWzvLQoXAtv+eSa/2YDlll1eHLrq2mwivsxzI
	Zroq4yB8Zg8jQgSga0EFjJPkpVXoN
X-Google-Smtp-Source: AGHT+IF2Jbv1AQBWN9RNpi3THbhLUo/HS6JVyDu5pIMNY6HtVjUQaasvXZyQdrMYi7MyKuSxoeI3zg==
X-Received: by 2002:a17:90b:28d0:b0:330:797a:f504 with SMTP id 98e67ed59e1d1-339c2706797mr17352482a91.3.1759802801292;
        Mon, 06 Oct 2025 19:06:41 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::55b7])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6ff0dddsm17949730a91.18.2025.10.06.19.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 19:06:40 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,  Bjarni Ingi
 Gislason <bjarniig@simnet.is>,  linux-man@vger.kernel.org,  groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
In-Reply-To: <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
	<20250930194004.btcbo4xspyo3j3ua@illithid>
	<6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
	<20251004094243.avg4hvwwir7ink5u@illithid>
	<20251005134812.jvwyjjklabmnzejp@illithid>
	<66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
	<20251006085149.oor3kddfih63yutt@illithid>
	<bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
	<20251006104224.yw5dusvjjkw2ymnv@illithid>
	<yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
Date: Mon, 06 Oct 2025 19:06:39 -0700
Message-ID: <87frbvea8g.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

>> It builds for me and others, like Deri and Grisha Levit.
>> 
>> https://lists.gnu.org/archive/html/groff/2025-10/msg00009.html
>> 
>> Have you "bootstrapped" lately?  That's necessary for Git users when we
>> bump the version of gnulib we include, which we probably did after
>> either 1.23.0.2695-49927 or 1.23.0.1254-19a18, and maybe both.  One
>> thing I do recall is bumping gnulib to get at the checked arithmetic
>> functions--precisely the ones you see above.
>
> Yes, I bootstrapped today.  I also ran 'git submodule update' prior to
> that.
>
>> 
>> Also, FYI:
>> 
>> $ git describe origin/master
>> 1.23.0-4017-g3ea378d35
>
> I can reproduce both on my server (Debian) and on my desktop (Devuan).
> I'm using Sid, so that may have something to do (maybe I have a more
> recent compiler that errors where yours doesn't?).

This was discussed and fixed in Gnulib a few months ago [1]. I assume
you are using g++ 15 and the others are not.

Here are the relevant commits:

    $ git branch --contains=7ee6e40b6730c87e5c1323bb5c2564bcb6eff9e4
    * master
      stable-202507
    $ git branch --contains=e331531a771443edae4135e6bcd016282cf1a3aa
    * master
      stable-202507

But groff is using a branch that does not contain them:

    commit e3ff929ddea95e0fc9fe7ea3541d28665de42370
    Author:     G. Branden Robinson <g.branden.robinson@gmail.com>
    AuthorDate: Fri Mar 28 03:10:49 2025 -0500
    Commit:     G. Branden Robinson <g.branden.robinson@gmail.com>
    CommitDate: Sat Mar 29 22:27:32 2025 -0500
    
        gnulib: Update stable/2025-01 branch.
        
        ...to commit 3fbc2c7bb3, 3 March.

Using the following command I can make ./bootstrap use the master branch
from my local checkout to copy files:

    $ env GNULIB_SRCDIR=$HOME/.local/src/gnulib ./bootstrap

Allows me to build groff fine with g++ 15.

Collin

[1] https://lists.gnu.org/archive/html/bug-gnulib/2025-05/msg00207.html

