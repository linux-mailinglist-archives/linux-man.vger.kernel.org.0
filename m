Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFCB63C5DB
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 17:59:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236431AbiK2Q7U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 11:59:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235803AbiK2Q65 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 11:58:57 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0AD66CA3D
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 08:53:58 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id vp12so34021423ejc.8
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 08:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B3PQeEW6+r6rWDBYk/IzX0T5doKc7oog4ooorm3Qm6I=;
        b=In9HJJRQCXqNkXB3HRQxSbCipcjwJp1t+/OVIFJsWtu95eMB1R4Gw3clwI31hDxQBa
         j5WQL5x7ur5mZfw9eiKvO+xBQchf/6QgIuuwmK1QA436ELM+d8Xq7CkRuKLVR6e+wc4M
         bCDoC5hwSxKJ8mExXTaigBbebpsIlPcyd6h1AKqULM/tOhwByTzA154f5inLh8BWb0Xy
         qfAzQrzQ2mKVpriaH/pHDy5KZrpZvEG1MmUoQbjxAwuBdEBcYIT65q36htJqA73ljvbO
         BxQQjD9ngZT+JDeISBcwrb2SV1jXwOPe7//8X0y+cxs2m++Zr3zDPSvyqYfoUmIRH3DP
         VtoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B3PQeEW6+r6rWDBYk/IzX0T5doKc7oog4ooorm3Qm6I=;
        b=GMTnXMpUudDUemFR0aE9/1Rv8/Q48FyelWNXXw+3UgXg6pHKD0UvNbBiOOwrGYO2t2
         aVd1iSV6Ae5H7x3H7EPhRXMCZE1FHZTgP1oZNUHEASnlDjV164mmxC+es70VADbs17x2
         uPrMJo1thNcUnGJLeIh6O/JqH3y1xc1a5yUilULdUgA3xeKRcLZ3cqiiGYLO6f1LvTEk
         oStKrHuhqd5g/KDFNx2uKdeijSkETc3N6dgZ81frWMmKRNXzJncIP/sgHDQqs0AjZbLx
         tiSt9VM3NMpkCuskINMoOyLTQFYGJGfrojQRBdZvibbhq17R5t4nrN53tnOWxebJDbZD
         ciHg==
X-Gm-Message-State: ANoB5pkEaxSH9LgTGbu+NSeZ5TdfEp7N2EDLjHQPIyjWc9kwiEUvXBHH
        VDDDNL15gMXv4jJ7s9MG9lh4SLqfwFi+OeRT8eKmT19s
X-Google-Smtp-Source: AA0mqf465rYXhHzrhGVydzOqZ9C8JjIq//cIeIFxjPxm1eBS03oXaTqWQGLQQJog4rrkXQpD3JxAaOG6UF7shIRC+Yc=
X-Received: by 2002:a17:907:cf84:b0:78d:4795:ff1f with SMTP id
 ux4-20020a170907cf8400b0078d4795ff1fmr2854375ejc.331.1669740837345; Tue, 29
 Nov 2022 08:53:57 -0800 (PST)
MIME-Version: 1.0
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com> <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com> <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com> <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
In-Reply-To: <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Tue, 29 Nov 2022 16:53:45 +0000
Message-ID: <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function parameters
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Michael Matz <matz@suse.de>, Alex Colomar <alx.manpages@gmail.com>,
        Martin Uecker <uecker@tugraz.at>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 29 Nov 2022 at 16:49, Joseph Myers wrote:
>
> On Tue, 29 Nov 2022, Michael Matz via Gcc wrote:
>
> > like.  But I'm generally doubtful of this whole feature within C itself.
> > It serves a purpose in documentation, so in man-pages it seems fine enough
> > (but then still could use a different puncuator to not be confusable with
> > C syntax).
>
> In man-pages you don't need to invent syntax at all.  You can write
>
> int f(char buf[n], int n);
>
> and in the context of a man page it will be clear to readers what is
> meant,

Considerably more clear than new invented syntax IMHO.
