Return-Path: <linux-man+bounces-3908-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4DFB8D23C
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 01:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D707B3A6B07
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 23:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E788F285419;
	Sat, 20 Sep 2025 23:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aGvbwj3l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474AC272E6E
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 23:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758410308; cv=none; b=TXbigOCBioYV7ztuMMJncrb5KCoCvfdbNMPmh/uQjloK2iusPhYppPV1d5nJKwj+MbkGzlFy5rsy3TqKOf4/xpxqL6h/wX2sgCk/OgehPdN0ILkAyAOtuMXZSfhEauVhzVFVWM8mX+D4hEp0eB503w2KktKvfFVq5ZoEnb9wKak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758410308; c=relaxed/simple;
	bh=Qf2N/W9iKqqJwjm1Y0EJHd6gWo0u0bSYPDmnHUXJX6k=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=End0Rrm4McY/Kfm17BAfO/1kKAJSxqKkFEGa1tY6SOyGLKKNr5wBwmMvlBy9odkKXUdTourGffo+v7l/ReG9YJM3vsQkbebwPzVGJfJR02Hk6JTAoNYxRJzBYunmYRiu/TLYXSizuL1a3KahfRqO+JVYQ4T8okcJzRWa2MwZ2zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aGvbwj3l; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-77ddfe29cccso2034040b3a.2
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758410306; x=1759015106; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qf2N/W9iKqqJwjm1Y0EJHd6gWo0u0bSYPDmnHUXJX6k=;
        b=aGvbwj3l9KtyBIE3rR3+vY0uAxvl2I/9GOaLq770yZxEs2PsGcNO2RRvQI5rPJ6KBb
         mxUuDIsuboYhkdChXTZkHmaCA9nKvUiF0lbz17l959Qkn7F0AxtPUyxhaxXJUCfSj5iC
         wgxjx6YYn8OhjDsxdxGCq3FzoHO9KwS7zoJj0fqWwNACNpPWR1NC3R+WiRfXMWCQw5cc
         IHxNATxY8kJ11o209RFHlM5Fy3oejmT6+CIMecgQgzMhBEcYavnZROTWQ1fF5PRzjF5Y
         4k52p0nUSKDK8HxqrRejsOyWyemX3psAXc49FrRTOT52y0o38m8hV7JBE1qnoTONg743
         PK8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758410306; x=1759015106;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf2N/W9iKqqJwjm1Y0EJHd6gWo0u0bSYPDmnHUXJX6k=;
        b=q8BLViS/Cs+XZb8vTkkAZAX0v3kxFD3JD24hfdcjaVbmfB8F1ueDd9M72bIHLHozch
         El419RtXqoO0xFHIOuoe7MXJSQ/02qsD+uMGdyKYH1uW9hrAwfT8/lp+l1H7+DVhIZz5
         lT7cBocyRwBF3b9LOrAf8lkhl08ghJKn6vSHgDejPY1uEWUsQcJm57Rt6sIlPdfkBpJB
         Hs8T4caVvofNbILFeg3is2DgTnpcVGeCi9E74n++jlmyRDT4PUHsTdVSvrUX5YZWdF6d
         cv+ZO52/OqJPuf7aK6CVHPd7W4e8AuR2qcTrlgD+U3rJ4HzAeE7Ws3tRTpPDOf5UxPz8
         7vTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbG+h5ew0mBP7YxuBnEe2+gX6VL3j7i0E3x5gk1AzuE9i6vejKuWUHBPaa96OEM0BIuzYBjLuf4qU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4p+C2nnnw8vjCdNo45sqjLxuCRUSannfHLd2SAEJhP9iX3lJC
	p/Fg0j79m4BaLiigt+u0UAYrX6KbkWB5ClAGioiWvQrZEsEeClSdxa1uUbEVzg==
X-Gm-Gg: ASbGnctQHEUDOMIDSsHmZxNwnmTSI6isQs9HbQmD0kjUrE//ClZCMsErwrjzrNck5+s
	B0FlbHZvaKr1SQGAp3UvQ+7sitPDv9rmExJtJisg4Hm00BXwRJIxCfB+IvQq6/ZvpdY0O+Yvnew
	0F5IzBi1t8zqS5rjz3q1byLFPykLoD5PmkUuQb37ukFHBgqZklAVd06CIPtZjUMgaOtxfREEh8B
	VKTdEvP2bpykSEcPfuSA8Th2DCP0Bd2IEQcchzZ13+wNi9dz3/Gf7/bt6g5TfZEbzA2isMkReyk
	UHGjt1EpbqyiOS9vvFHmm1p6jMdzm8yoieHqeHduhSwUclYMvoFT2Wk625tN10uLjMHLYdJAxqG
	FRflKt1TzJYo95Nk=
X-Google-Smtp-Source: AGHT+IGZk2/QC0U1c1xAO5aqZWV3PoD6NO461okdP9pnp/s8ptFxWGVGjff6ZyZTPIYikInHvQJNaw==
X-Received: by 2002:a05:6a00:21cb:b0:772:50c6:47d6 with SMTP id d2e1a72fcca58-77e4cd3584fmr10110178b3a.2.1758410306335;
        Sat, 20 Sep 2025 16:18:26 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::641b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2f02c0d7sm114228b3a.93.2025.09.20.16.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 16:18:26 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: William Bader <williambader@hotmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,  =?utf-8?Q?P=C3=A1draig?= Brady
 <P@draigbrady.com>,
  "coreutils@gnu.org" <coreutils@gnu.org>,  "linux-man@vger.kernel.org"
 <linux-man@vger.kernel.org>, 
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <PA3P190MB24382227EA61EC2758D5AA11C410A@PA3P190MB2438.EURP190.PROD.OUTLOOK.COM>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
	<53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
	<4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
	<jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
	<87o6r4zy73.fsf@gmail.com>
	<PA3P190MB24382227EA61EC2758D5AA11C410A@PA3P190MB2438.EURP190.PROD.OUTLOOK.COM>
Date: Sat, 20 Sep 2025 16:18:25 -0700
Message-ID: <87ikhc7lxa.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

William Bader <williambader@hotmail.com> writes:

>> I guess Markdown or reStructuredText would be more friendly to new contributors since many do not know Texinfo.
>
> Pandoc https://pandoc.org/ can convert between a number of formats. In
> theory, it can convert markdown and rst to texinfo. Maybe with care it
> would be possible to come up with a set of conventions for markdown,
> maybe with a preprocessing pass, to have pandoc produce texinfo that
> can print well.

I have heard the name, but I have never used it.

Sphinx, used by Python [1] and the Linux Kernel [2], creates nice
searchable HTML pages. Apparently there is an experimental Texinfo
converter [3]. I don't see most GNU projects using anything that doesn't
create good info pages, though. Although some have mentioned not liking
the 'info' reader, I find the one in Emacs to be nice to use.

GCC switched to Sphinx for a very short period and then reverted the
pages, if I remember correctly. See mailing list drama involved in that
change [4].

Collin

[1] https://docs.python.org/3/
[2] https://www.kernel.org/doc/html/latest/
[3] https://mysphinx.readthedocs.io/en/latest/faq.html#texinfo-info
[4] https://inbox.sourceware.org/gcc/1a22bc37-3d48-132f-a3d5-219471cd443c@suse.cz/

