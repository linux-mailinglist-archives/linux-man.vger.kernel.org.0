Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7148538DD08
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 23:04:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231967AbhEWVFq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 17:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231956AbhEWVFo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 17:05:44 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC02C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 14:04:16 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id p7so22712978wru.10
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 14:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I/PV3bP4V2YOOVXCm2b7VxOcgBruXCX0mTsZeEmLupQ=;
        b=Md9sa8yAg8bawwI1zEsEP//UFqt70HN3T36twi8wpIcMWxK/VlsajVDgexWLgXFuyd
         rgNIqFXoAIfgxKyKsLlFPDf1cgQPCQibSExXViSZNKdNOnoEPcyV3BbK6Z2m+2tD+xnP
         bHeCtiZGCK3A69JLev/43rLsNiQft7t+mYpA6sexjdVmh/j6u2YsO18kbMBWazysPsCa
         ehUKKBxJUCG50+VZajsT3joPQPJO8WzrCL/vJtG/1g5Q45qNA+pK7KufQd5HGRu0cgnw
         xIucxcgws0zL6ZvWIBmKFpQN2ozSVjw/738m4J3VgF3IQKlkM0Fkm9s/lihB3jzFWITo
         9xZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I/PV3bP4V2YOOVXCm2b7VxOcgBruXCX0mTsZeEmLupQ=;
        b=Dw9B4pN4vbrtWkNN8bemnQb0OZgHl9FK4la2pA4E/Qfyw135jHDLXDel31L1WQS6pM
         Yq/Q1wBK9gGbuHOgj2LK4L1hPnNnFGSWbI3whEjMhL7KpHW+ZbGj5/tV2wJAKqoGBVs7
         IoNO6F6P+CUb3Utzte28lXT0J/Rnd1jMy5nAbs2jI1CJHG75ijn4FjwEaoDsstcT55RY
         P/PwtXNnkXkvMmNIYjo94g+CvBGqCwCpSLeAyEG/ErdXirD/iqQ1bqJUwEEOnnVlBPYj
         etNxWnV3ssEuAUmQGU2VLjowhoLhNY4HBvMq5VCXmhQssrgQvaZ1ORCt3aHB9y+Za7B/
         Md+g==
X-Gm-Message-State: AOAM533OibxbZNpi5VBTvUtVzu6N8yPSqcxK9wRPZ8r1SpCuzlOOcTyW
        CKBU0qpzIlNccLY5bj6q6Qhyo3Ux0uU=
X-Google-Smtp-Source: ABdhPJwtgavUfW8AQd/pqHsjBb9DwA/Y+CjbNFJQoU8HJj0Wa6SwTgIA9nje26u0Hn0zGg/BhkW3eA==
X-Received: by 2002:a05:6000:148:: with SMTP id r8mr5038905wrx.311.1621803855493;
        Sun, 23 May 2021 14:04:15 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id a11sm9851908wrr.48.2021.05.23.14.04.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 14:04:14 -0700 (PDT)
Subject: Re: Adding struct-xxx link pages for structures
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
 <20210523142610.vycmifmrznf7oqlk@localhost.localdomain>
 <5b95386d-f616-e524-f161-89eeb3103358@gmail.com>
Message-ID: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
Date:   Sun, 23 May 2021 23:04:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <5b95386d-f616-e524-f161-89eeb3103358@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/23/21 10:53 PM, Alejandro Colomar (man-pages) wrote:
 >> The use of a dash/minus as a separator "feels" unorthodox to me, but
 >> perhaps that is just the pull of blind tradition.  I think it's actually
 >> a better choice than an underscore because of course "-" is not valid in
 >> a C identifier, and "_" is, so ambiguity is avoided.
 >
 > I used struct-foo because man has the ability to allow either
 > 'man struct-foo' or 'man struct foo', and the latter looks very
 > intuitive from a C-syntax perspective (I learnt this from the git manual
 > pages, where you can do 'man git log' or 'man git-log').  'man man'
 > doesn't specify this behavior, so I'll read the source code and try to
 > confirm how it works.

I would need some time to understand the code, but perhaps it's around
lines 1303 or 1396

.../man-db$ grep -rn "'-'" src/man.c;
1013:	if (dbfilters && (dbfilters[0] != '-') && !preprocessors) {
1303:			case '-':
1396:			if (*pp_string == ' ' || *pp_string == '-')
2921:		if (*source->pointer != '-')
3222:	if (*in->pointer != '-')
.../man-db$ grep -rn "' '" src/man.c;
797:			case ' ':
810:				if (*(manopt + 1) == ' ')
1302:			case ' ':
1396:			if (*pp_string == ' ' || *pp_string == '-')
2415:					putchar (' ');
4051:		} else if (cmd[i] == '\t' || cmd[i] == ' ' || cmd[i] == '\n' ||
$

 >
 > Regards,
 >
 > Alex
 >

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
