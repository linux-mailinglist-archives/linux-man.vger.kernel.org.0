Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3C87241847
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 10:32:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728346AbgHKIcD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 04:32:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728253AbgHKIcC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 04:32:02 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A8CCC06174A
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:02 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id y3so10643432wrl.4
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e23qSy0PLxjfKUQVDWPAkWn24kH4nS71H2t/FG3WBq0=;
        b=hbNegUFh9yRqDsG00SnEGC5Itjf1Rb1AIJcHXpO1EjR9oWj03Ay3br/LfTsrRGxcNA
         wZpLTcPkxtWu4VOXLp+ocN2vv1UnXOboHlpndHh2ST7/mpFH0zNyA1jlmiXUJmiQOoNA
         i/DX3j9GIp0jH8aMij6HyGiGMgazun3RoVPWcZ2qp5jMNP3fyj5uE1af7cGFbVFEenY3
         R/5md77bxm6Id1x+oy4TTD/nJgY4WVfh8iiiHo9fAEWVsPDd8Wvy8+yfur0dAzXB2ggv
         rU5RnCU1T9r2gDJWd4xR9PBM82hYvFLM61WFgdfFp8GcQKLgOyuWNjAnEp7lNOEOQJAc
         +m7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=e23qSy0PLxjfKUQVDWPAkWn24kH4nS71H2t/FG3WBq0=;
        b=VQ9oesq9uchNYGirGy0nxRRjbalyaBmmRw6PGLwLcTv8JgSlo2+uhlEwhUMZp9RzrN
         gZs2baaFpbthYx0WmFEmXjsEb4J47xE7x/sMMhUYOJjW8IFYrVWuomzQauI5yxJXDfo+
         u1YMoYpmqZkmfzoB6LoezZEkZ8aikpHQhg/YTQgXz/U9cPL373hmTfWNqgE2SsMkxvtz
         PZQulfAwysOHCh6MyKNUlIwG2ANBROQ/43m/EetfD9hk5ttSReVNbKgJzJlaR8/dLGqp
         38aoyP+5lNQ/d+uzz6bWKRjW6RFbIWN4cmlXsHrtMXMl280h4lGvR3PYNJLCbCT8PD6Q
         8sCA==
X-Gm-Message-State: AOAM532vXZzQ7Gj/2cXkwppW870hR30G4Wm1hxsUqGYpQoCais45A/Km
        yC8uGDad5wGZ7Tf4TnE5wL0=
X-Google-Smtp-Source: ABdhPJwkbhPO/WBIkALtBzCkuxQpYn0qFQfUbEhaFEhPmmN5XpVqEkr5x3kiAuF/lS0CGIclpXT+GQ==
X-Received: by 2002:adf:f388:: with SMTP id m8mr5268277wro.338.1597134720865;
        Tue, 11 Aug 2020 01:32:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id n11sm3639728wmi.15.2020.08.11.01.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 01:32:00 -0700 (PDT)
Reply-To: mtk.manpages@gmail.com
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>, austin-group-l@opengroup.org,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Thor Lancelot Simon <tls@panix.com>,
        Larry Dwyer <larryd.kbd@gmail.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
 <20200810135821.GA11918@panix.com>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <3ace6e62-d3cc-ef7b-56b2-9b6b5c724d5b@gmail.com>
Date:   Tue, 11 Aug 2020 10:31:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810135821.GA11918@panix.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/10/20 3:58 PM, Thor Lancelot Simon wrote:
> On Sat, Aug 08, 2020 at 04:18:10PM -0700, Larry Dwyer via austin-group-l at The Open Group wrote:
>> How about the "control" side and the "terminal" side (of the paired device
>> files)?
> 
> How about the "pty side" and the "tty side"?  It seems hard to be more
> neutral than that and we can be sure there is no ambiguity.

This is an option that came up in the glibc/Linux man-pages discussion.
My objection is that I want proper nouns that one can use in a prose
description of pseudoterminals.

Thanks,

Michael

