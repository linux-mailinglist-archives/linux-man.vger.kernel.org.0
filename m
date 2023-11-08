Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 227DC7E6008
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 22:36:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjKHVgG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 16:36:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjKHVgF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 16:36:05 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBBB2586
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 13:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699479315;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dL/4N83zVsoT7kaoP6b3tcu+qGlbt9ivJF3bw+W2/aU=;
        b=S6R8sWW40qddWg0AkZqgVJ2OFpwHNy5XQF7hpJWBMXxK2HSGXLjj8N5uQjVXt0NjHYT265
        mhRRtxIVtRNdYrldC84eZQ8HDflWIDPkZXWA3KB8yV/Tza90hMx0MBGBHBOPbupDp0MzoH
        lla1SWqBzj20kvJ9DFbRDyWUsTUgKkw=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-467-YKjMvvfuNG6XL4Ucn591Ag-1; Wed, 08 Nov 2023 16:35:14 -0500
X-MC-Unique: YKjMvvfuNG6XL4Ucn591Ag-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cc6fa3ea4so2089901cf.1
        for <linux-man@vger.kernel.org>; Wed, 08 Nov 2023 13:35:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699479314; x=1700084114;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dL/4N83zVsoT7kaoP6b3tcu+qGlbt9ivJF3bw+W2/aU=;
        b=jiAFtg9VVdNCSUaTnsgbKTrzqeLaNukRZQILaBmCpC3fMf/JqL4ApbOY5PdF5zOwWX
         7DCVzWUx88BY788bd/E7DL4Z914bQMBwU1iPmxvc1gp+K5KlSSSek/hmrlBvyDLhTuCX
         2/FBX0YBt3pJJBe6i2U7bqeBttBriao2I4ltTbD96KOAas92X27dpTr9b3hF5UCKHgzG
         k0/y1R1n16v+N3hu+S3AGESruEEcobNaUyqHYHvpYLDSGQr4gSDWOS2sxfGqWgr0bMgo
         o6CbIGsHu+wn8Lfjy8nJlINsMx+70PsWlZWoPx/5QFxEfZxAWuMw5RvYZCVRHNIIaUn3
         3RFA==
X-Gm-Message-State: AOJu0Yz3pNAb1ZQfWcWSuXgWG3+T7plXnFlHkiG2BKMP4YZuTHcv7tdY
        Lmcjq7c85YZ5yQgCHKy3hsoIoAFIuRE2NHuzmchZN6hlhbCoolFjOHDj1lZb1+l4j5zh+A2uHFc
        AYAeYJa2k575azzSTAZeV
X-Received: by 2002:ac8:5fd4:0:b0:41e:196c:3a37 with SMTP id k20-20020ac85fd4000000b0041e196c3a37mr4054247qta.35.1699479313837;
        Wed, 08 Nov 2023 13:35:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqIG3NCqyHxQM+DK9KBv7yDR2tvRPad7fiKtGfykg6VuP+dWrDnwId2FgZR4i++o1dXzgSLg==
X-Received: by 2002:ac8:5fd4:0:b0:41e:196c:3a37 with SMTP id k20-20020ac85fd4000000b0041e196c3a37mr4054235qta.35.1699479313611;
        Wed, 08 Nov 2023 13:35:13 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id o19-20020ac872d3000000b0041991642c62sm1289783qtp.73.2023.11.08.13.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 13:35:13 -0800 (PST)
Message-ID: <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
Date:   Wed, 8 Nov 2023 16:35:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>,
        Zack Weinberg <zack@owlfolio.org>
Cc:     GNU libc development <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
References: <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org> <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org> <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo> <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
In-Reply-To: <ZUukRqsFNr7v_2q7@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/8/23 10:07, Alejandro Colomar wrote:
> So we had it in ISO C in C89 and C99, and only in C11 they realized it
> had to be removed.  POSIX hasn't even removed it yet!  I won't hesitate
> to kill a function just because of bureaucracy.

Attempting to get consensus at an international level, across cultural boundaries,
use cases, workloads, and developer workflows is difficult and not intended to be
bureaucracy for the sake of bureaucracy.

-- 
Cheers,
Carlos.

