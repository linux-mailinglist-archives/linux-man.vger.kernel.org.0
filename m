Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16D4D4011C0
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 23:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbhIEVWa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 17:22:30 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:23049 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229510AbhIEVW3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 17:22:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630876884;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=OYL4Z8DJ2PdQhG9OG0g9AY3SOuzXWKbbrtf3X8xLoMA=;
        b=g7pp789uLiD5r/UlRPOjjF1/b3flrhrPY9JzwSxwSAUDAZGD/fECne4BAlmOMEJ3SKUzl6
        nXYXT1ADAzb7VBJjdD8yLDtGnL+LSwSE5oD9jF9lZ2Q5EZcyrH7/AztKtnIjS7HXAPmeul
        LXeUMVMOy5uE47DrQrNgF+D1k0jE/7M=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-q6l9956GM_umAu59U9i8aQ-1; Sun, 05 Sep 2021 17:21:23 -0400
X-MC-Unique: q6l9956GM_umAu59U9i8aQ-1
Received: by mail-qk1-f198.google.com with SMTP id h186-20020a3785c3000000b00425f37f792aso8789473qkd.22
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 14:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OYL4Z8DJ2PdQhG9OG0g9AY3SOuzXWKbbrtf3X8xLoMA=;
        b=tBl/0hSs195Gy0idb4mP8qvPHBfv5mkqzRIKV92VS5CiPYuflBCTFbULT8QJSefIxe
         d9Jnlj5MluQXPN1sqQCaVRAda4Qfe2gdRtJ9bqBQeuPUjVKpMv1Yh4a3NLeiiqEGiW/2
         WM0eHMtMoKoasigK7gbP+XZOG5oxeZDtnzNxmAsRo2n1bVQald/JgOcvuY79/NFNDP39
         0x0VQocakyVRUvBBF6Jbd76EL5iUAG45Plxbo6jYqQMiyB8YhWGdWX+K8zMFC7RgZYQ3
         nVoCIKNauFw9xrlrBl+f5L39vVn0JGHzsPoBp5pfYSGCp9Z5DF6vJoIdsuW2o5rAckw3
         cJlA==
X-Gm-Message-State: AOAM532DtkEBUsQI4gX6SnLtS6M+ztY4XiOzjXlPPCQgqM27+9ip3PfU
        JWc8hGphbH6qYjAzrQ7xXIDAQoXwq+or0HD4wj/NPiRUUM7ADtboqm0+WyzJr1npCcKf2jzTv40
        WLkR/ANDMl8Dj3LahR2kSiwpPsP6F9gM7EyBP
X-Received: by 2002:a37:a56:: with SMTP id 83mr8524292qkk.22.1630876882771;
        Sun, 05 Sep 2021 14:21:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwX3zXxr1uidbTCtzDZ9CWu74mPM1yjU6h1Erbminr6q9kyfTsnGaSJtM5rbMdzA4HngpUwYkqAj4XpwKkVNA8=
X-Received: by 2002:a37:a56:: with SMTP id 83mr8524280qkk.22.1630876882564;
 Sun, 05 Sep 2021 14:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210905132542.245236-1-alx.manpages@gmail.com> <20210905132542.245236-4-alx.manpages@gmail.com>
In-Reply-To: <20210905132542.245236-4-alx.manpages@gmail.com>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Sun, 5 Sep 2021 17:21:11 -0400
Message-ID: <CAC1cPGykb3KzE6OnP+KB2qxSZ_c3hDCxy4g73wGCw+xcOEm31A@mail.gmail.com>
Subject: Re: [RFC v3 3/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 5, 2021 at 9:25 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>

> -.\" The GNU General Public License's references to "object code"
> -.\" and "executables" are to be interpreted as the output of any
> -.\" document formatting or typesetting system, including
> -.\" intermediate and printed output.

Shouldn't this statement be retained? It provides a useful gloss on
interpretation of the GPL.

Richard

