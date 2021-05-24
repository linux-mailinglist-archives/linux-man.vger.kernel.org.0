Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0EE38F37A
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 21:09:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233165AbhEXTKp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 15:10:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232983AbhEXTKp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 15:10:45 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5673C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 12:09:15 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id z17so29613151wrq.7
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 12:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GkSd1KiFxqxyJzhiR9O6tuZGU6SAkWcm65jbAOm4R7w=;
        b=sZdx1zHYinOaww7ZUeEF7xZ2k2u8Z8gCkzPVPMPc1fk1uzDb8SKi9hn5fglEna5QP4
         LTbClbs7sdyRcbVq0peMnKLb9P1h4sqxwQj50yL9z1sJFdYJ+OngYit5dUyjxfhoYCox
         sJCHZrjkZdLkEaohHMOoq8x4Y2iBLOvFsuLBhUtn6uWJ6s9ZgjmA012o5lAsk6LBWTWR
         ftrlq44nthkRbyqcva1PG+8cVAMrrA4K2NRtTDg+0la9uhXaveOBwGpebq7OWv2+eQzi
         29ft89PiBfchhoZ234YTuhIDO+ACfsX9e4CxXbTIDohzQ8RJUdVLOM8SpcLMn1I4hh8d
         bGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GkSd1KiFxqxyJzhiR9O6tuZGU6SAkWcm65jbAOm4R7w=;
        b=M/zK7SYC5kzn3WH5EufkB0EptP/9bOCeW0kyY1UezkShAgpYWR7iDD7dniG309OrwI
         tmRN3eI7BE7Msic7odJIiuLb53o2/hsX31cZWTqIGMZGBd7jUnvwcBVjUfXtaXMNaFkG
         nD5lAQXamC9g1kV1rQ89rE0UPCx6+1855Hrl8qI2xpZN1bU0GslEyItSlHWHvrr36J/r
         O7QHM9WhAzTBRTpYBCnvjXReLb2kIVGahOuljDG1M1YcETFfV/G+nTMfPrpOs3anqzOs
         yY5lgUD4P+5+OvMKfgD4Epzf26dcwkagCwiDmZax2IkWpVY6JQpKaAK6in0RdyM4/82L
         TU5g==
X-Gm-Message-State: AOAM532/Djt1Pz2McaLh32j+4SixEi/l4qa4HnfyfCJrUfc47Swjx0mE
        lu7detKjNHhcW84FvYA+kj0dOsMz7hA=
X-Google-Smtp-Source: ABdhPJzqPhCeLt5N6MoCKYFsslEQOFGDva1agsKstuxVHFO1uhVKYxag/MtVPlhKOpapj4lqpwcIDw==
X-Received: by 2002:a5d:62c7:: with SMTP id o7mr23503651wrv.372.1621883354487;
        Mon, 24 May 2021 12:09:14 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u17sm3621818wrt.61.2021.05.24.12.09.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 12:09:13 -0700 (PDT)
Subject: Re: [PATCH 00/10] man2: SYNOPSIS: Use syscall, and fix includes.
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20210521232553.161080-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ddc30879-c7c1-d66e-2eed-443319f3186b@gmail.com>
Date:   Mon, 24 May 2021 21:09:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/22/21 1:25 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Almost finished these:
> $ man_lsfunc man2 | sed -n '/socketcall/,$p' | wc -l
> 67
> $ man_lsfunc man2 | wc -l
> 401
> $

Right now I have around 20-30 more patches about this pending, and 
that's all; I've finished.

I'll hold them until you apply (or reject) the various patch sets that 
are pending to avoid creating conflicts.

After that, I think we should release v5.12 :).

And after the release, I have 4 branches to develop a few things for 
5.13/14 (some of them depending on what we decide about some RFCs):
  - library: Use LIBRARY section (similar to FreeBSD)
  - stdint: Use standard (<stdint.h>) types, as well as standard attributes.
  - system_data_types: Document more types (I was documenting those you 
mark in TLPI as important).
  - examples: Fix the includes in the EXAMPLES sections to use the 
minimum number of includes, by using iwyu(1).



Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
