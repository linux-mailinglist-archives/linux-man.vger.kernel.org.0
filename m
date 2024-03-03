Return-Path: <linux-man+bounces-497-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D66D586F352
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 03:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7047D1F219A6
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 02:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDAA3236;
	Sun,  3 Mar 2024 02:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OSvnzIB5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED5763C
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 02:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709431359; cv=none; b=sQQp54ZRh33IQkOMLOeupGqzaT3ZLSw15hQN9F317QmdGHQSCP6MZoaTsvfX/YgBc4vDcDeeXbbO5I6KUSsDiBBPYd1BwfEf8TkidUQCQPZAK41JeFA9HJwoZPmXIwE5g29VNCho+lsh0waOmJcjHeI+kQwwb6L8qVZkWkabUI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709431359; c=relaxed/simple;
	bh=7wrJykZtHFVDi3PaBm6x+jIdHLRDkgb9FmqQcQOzM1U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FkQojPxbWOZAqkw4dI9hNm1FS4PUniBlaV498weeCsxayzGgLfMPWuWNT9a8zB83QHHdLW+2JB+Jig/EmPAnZKrATsggpgM3DXjeNYgIsr2TXevWsNapBDYWBGoy4OJ6R9TmQ85YBWt3b/jD5dNKqPFsRJrPZHMNC4m2ba9ZvvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OSvnzIB5; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a4417fa396fso451828966b.1
        for <linux-man@vger.kernel.org>; Sat, 02 Mar 2024 18:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709431355; x=1710036155; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cS0dl2KVidNbS3w+VF5jsrPrelC2aANjAPZl7rhvgEM=;
        b=OSvnzIB5kNM4jPSFIMTF9KrsAIHi3LSIsccIiA/R5f0iHZwHjaXQtpxYT/Ed31JiR0
         ND/SxztfHm3qJ26yjBCBwWdLO9CK6Dzh81AWP50XCxyvhj8PnLIbmjmVtauX98SWxYM/
         LzdafHXPH+FT4eVJX05Z86Dm2f6gvZKZ7QzsthbgSDS2I+kE825/ZBlj+AUVcr2/XZfM
         j+cXzf3H/0QUTJrnVbsAPq6WTWObrZd/CcVTLp7BB0j1J4Zwl9HmVmHuj7075hP5wVhh
         NNKsYg4JBDyA+d4CIwpWJBdNhpmA7hYIz5YyPAeNzk2fUqqGTd3GLZld8w7+P87d7mKk
         JIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709431355; x=1710036155;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cS0dl2KVidNbS3w+VF5jsrPrelC2aANjAPZl7rhvgEM=;
        b=shnQFcuUWfg9nztg8+wF+mFj2cVIOLyc8dMK8r/NxUX9+QuJtdS9cPOIDadRuEDWRK
         V3Qyx/rr9P4i2tCNl1s2pB/nVroTFDdYXv1bqqbCV2qacTvqL6Kyi5QZIA5Y+giESZtR
         ZmM9ssHoF6KltW9/0F6dOPKV9Y8JmWQkQYrC4OjqHPg1lhEBdyK298dkHobbDwOa+xuE
         yCqPpJWLMGv46TM5LDcuoHg3y+UncMB782Wwqfr3AW/vIxxWLKAfoh72vledi2OGTHyp
         /gpvcdHFyE0qfK006bZpb2TCLhwma32QepxXS4CWBGBZCGVbHNJAR+N5BBL/4n1bv+Rb
         CnYg==
X-Gm-Message-State: AOJu0YxB0+sznkn+l0gP1lovgnYW6iO/PFZCP7U1LYCzaJoZdxjxY6/W
	nk0YJxmw5iVGVMs9TUEnAn59/8x865uu3RLsLe+EDhxsgWysW+WP5tyguwFqI+EqwczM9iCoN37
	c3TB+08D2OedSnLMK+XBBm+wWtXk=
X-Google-Smtp-Source: AGHT+IEDN1ZvFw7sASq6QdWR6cJIAIhJtprhPaPy4zOtU02Z+kW9G6OKOU3/oO93g7hvl96afguNZYQgB8ao08nNLt4=
X-Received: by 2002:a17:906:1c51:b0:a43:80e2:98dc with SMTP id
 l17-20020a1709061c5100b00a4380e298dcmr3936264ejg.32.1709431355502; Sat, 02
 Mar 2024 18:02:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian> <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian>
In-Reply-To: <ZeOgFPCtzqY90kIR@debian>
From: Morten Welinder <mwelinder@gmail.com>
Date: Sat, 2 Mar 2024 21:02:24 -0500
Message-ID: <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org, 
	jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Content-Type: text/plain; charset="UTF-8"

Thanks.

There is (was?) already crlibm out there.
https://core-math.gitlabpages.inria.fr/  No particular need for wheel
reinvention here.

FWIW, it appears that the author of the glibc exp10 implementation
agrees with me that the implementation is sub-standard:

https://codebrowser.dev/glibc/glibc/math/e_exp10.c.html

/* This is a very stupid and inprecise implementation. It'll get
replaced sometime (soon?). */
return __ieee754_exp (M_LN10 * arg);


Compare with musl:

https://github.com/rofl0r/musl/blob/master/src/math/exp10.c

