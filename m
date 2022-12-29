Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ECC565913D
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 20:45:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233830AbiL2Tpu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 14:45:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233814AbiL2Tpq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 14:45:46 -0500
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F758D53
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:45:44 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id o8so10262615ilo.1
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=411yaj+bbZdYwYQ4M00KDSlzU4mRY0/T0rek9e9FQac=;
        b=Cza8uOklHWbOmPGBFeyhjGyqTcupJRYxOBNE7sTxDDTQj2Gd/pMTrrPAcEupjvYMiy
         aXGELYcTYLYjSEgypRCuk4R+ixHFIChyF8miPrEBIpIAn9p1JPXBwzKLnIM27t8Vcxr8
         Fo7zVsF5hV6mR98TolP6246FPmtHLAEcvA/24NjuZxe9394hBJvIAzgGXh/hq0h4wFAy
         Oi8a6teq2xQzVDpBZbORi8/gmYJcFJmHHwBbpAGuXkoYs4pg+5csx1jAoGTAD1af/oZG
         btybTdvnNUFKV6pp3u0SNkYy7Jpz732vLnVU03Bv9vYeQ31WOvVxTEtEdICaM2OgKY6o
         WMLQ==
X-Gm-Message-State: AFqh2kqszpwzYPzs7EvgSUm1uF4UfOEenooBgHubxD+YJTlfeh31a/ON
        Y1CWakZP5k77/EJ7Ks6pLjlFx8JwRjIDbWqVlhbmdw==
X-Google-Smtp-Source: AMrXdXvdfiOrKRjMSUPY+NL5gfKxvJabDI4mjkzS8jLvGDqWtHcMLOCeno37NbgXJUiD+pF+R+vFyCRswNqPVXCfrCk=
X-Received: by 2002:a92:b70e:0:b0:303:7637:ff67 with SMTP id
 k14-20020a92b70e000000b003037637ff67mr3065757ili.298.1672343143429; Thu, 29
 Dec 2022 11:45:43 -0800 (PST)
MIME-Version: 1.0
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
In-Reply-To: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
From:   =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <crrodriguez@opensuse.org>
Date:   Thu, 29 Dec 2022 16:45:32 -0300
Message-ID: <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
Subject: Re: [manual]: rawmemchr(3) and UB
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Dec 29, 2022 at 4:20 PM Alejandro Colomar via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> Hi,
>
> I was reading rawmemchr(3), and found some funny text:
>
> RETURN VALUE
>         The  memchr()  and memrchr() functions return a pointer to the matching
>         byte or NULL if the character does not occur in the given memory area.
>
>         The rawmemchr() function returns a pointer to the matching byte, if one
>         is found.  If no matching byte is found, the result is unspecified.
>
>
> Of course, if the byte is not found, the result is not unspecified, but rather
> undefined, and a crash is very likely so maybe there's not even a result.  I
> thought this might be a thinko of the manual page, but the glibc manual seems to
> have similar text:
>

The library itself uses this function mostly to find NULL as an
optimization. This is all before GCC handled all of this so it is
mostly obsolete.
gcc replaces null byte searches that use str*chr with s + strlen(s)
and expands memchr c=null  and rawmemchr-like patterns inline.
