Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24DE15A0565
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 02:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiHYAw6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 20:52:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbiHYAwz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 20:52:55 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21C755094
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 17:52:51 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id kk26so6936154ejc.11
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 17:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=ot0aEvyT380VjDU6PPl13tz+5G5649T71Q1QmyiGXIo=;
        b=YpSDVkBcxWVnnXfQXF/M7AZGWY5x+V+c24wMO5zVR8RFtXivElwnk0FLNTXke/emLT
         oh8/MGX4jyRJc+YrZXh96+Jtsdh8UfgCE6n4YSYTOMmu4AtkTQJ7laVjSVHJm8+QclNG
         oVzUJs4I5lvMg1LyJ9KO0CmiPyQ9FIcsSPJtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=ot0aEvyT380VjDU6PPl13tz+5G5649T71Q1QmyiGXIo=;
        b=ez7Be0yBIiYJpOx8Lip8l+IpvYtlFVq2LnGia4sGyVbVCZGGpjzcj8pfmXAlTrMgYZ
         1/jFJbLVt8kSALQJ8ZJSamNViqXe7Rz7XIQUN4fukzA6vx50uFCwRam0xh5G49+97/OW
         GHGq9o/7hLJm+4dhAYOl8aqcifwgz6WJm8AKk6YDcw7WAFEvgAjdfekeGMiIz6GjRKM8
         2eppBKfWexRf19XAV/xbp4YdIzOId59TCuE46G+EoWlrIkVbgJG7iZROTwFpjStdlxTC
         RVwcdT5HkAHDzhptuRwLcxdYFtf8gQ+6com4d4jO2ooO5w4QmQSaoVCdpFKveDULxeVC
         dtFg==
X-Gm-Message-State: ACgBeo0Avlhqzwlxw+uQcii9RJl+95Kd9UCa9RNzKeaiHXxaFsHC995m
        rFGGbVDwlGG1HUcwBtY7373CaIJReXitvPbLZ9M=
X-Google-Smtp-Source: AA6agR5/sAxrRNfJbYSnzZHm5pKwSPJw4jgU0PORJ6tbBh4r3q04kEGcI+i4fxgkvGwIDtw7/SwG3g==
X-Received: by 2002:a17:907:2cd1:b0:730:65c9:4c18 with SMTP id hg17-20020a1709072cd100b0073065c94c18mr914974ejc.324.1661388770010;
        Wed, 24 Aug 2022 17:52:50 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id fk2-20020a056402398200b00445b5874249sm3743224edb.62.2022.08.24.17.52.38
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 17:52:44 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id bs25so22709653wrb.2
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 17:52:38 -0700 (PDT)
X-Received: by 2002:adf:e843:0:b0:225:221f:262 with SMTP id
 d3-20020adfe843000000b00225221f0262mr764111wrn.193.1661388757863; Wed, 24 Aug
 2022 17:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210423230609.13519-1-alx.manpages@gmail.com>
 <20220824185505.56382-1-alx.manpages@gmail.com> <CAADnVQKiEVL9zRtN4WY2+cTD2b3b3buV8BQb83yQw13pWq4OGQ@mail.gmail.com>
 <c06008bc-0c13-12f1-df85-3814b74e47f9@gmail.com>
In-Reply-To: <c06008bc-0c13-12f1-df85-3814b74e47f9@gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed, 24 Aug 2022 17:52:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=whfft=qpCiQ=mkaCz+X1MEfGK5hpUWYoM5zWK=2EQMwyw@mail.gmail.com>
Message-ID: <CAHk-=whfft=qpCiQ=mkaCz+X1MEfGK5hpUWYoM5zWK=2EQMwyw@mail.gmail.com>
Subject: Re: [PATCH v3] Many pages: Document fixed-width types with ISO C naming
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alexei Starovoitov <alexei.starovoitov@gmail.com>,
        Alex Colomar <alx@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Zack Weinberg <zackw@panix.com>,
        LKML <linux-kernel@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc-patches@gcc.gnu.org>,
        bpf <bpf@vger.kernel.org>, LTP List <ltp@lists.linux.it>,
        Linux API <linux-api@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        David Laight <David.Laight@aculab.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Florian Weimer <fweimer@redhat.com>,
        Cyril Hrubis <chrubis@suse.cz>,
        David Howells <dhowells@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>, Rich Felker <dalias@libc.org>,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Aug 24, 2022 at 4:36 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> I'm trying to be nice, and ask for review to make sure I'm not making
> some big mistake by accident, and I get disrespect?  No thanks.

You've been told multiple times that the kernel doesn't use the
"standard" names, and *cannot* use them for namespace reasons, and you
ignore all the feedback, and then you claim you are asking for review?

That's not "asking for review". That's "I think I know the answer, and
when people tell me otherwise I ignore them".

The fact is, kernel UAPI header files MUST NOT use the so-called standard names.

We cannot provide said names, because they are only provided by the
standard header files.

And since kernel header files cannot provide them, then kernel UAPI
header files cannot _use_ them.

End result: any kernel UAPI header file will continue to use __u32 etc
naming that doesn't have any namespace pollution issues.

Nothing else is even remotely acceptable.

Stop trying to make this something other than it is.

And if you cannot accept these simple technical reasons, why do you
expect respect?

Why are you so special that you think you can change the rules for
kernel uapi files over the *repeated* objections from maintainers who
know better?

                  Linus
