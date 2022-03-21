Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 800974E1E92
	for <lists+linux-man@lfdr.de>; Mon, 21 Mar 2022 02:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343892AbiCUBJF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 21:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232714AbiCUBJF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 21:09:05 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D4C17A2E8
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 18:07:40 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r190-20020a1c2bc7000000b0038a1013241dso7620844wmr.1
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 18:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=R5zcGcSOUY7Fj/HEQJLFHuvthslegfbkYOXEIdNXqCI=;
        b=SXbxz0YCVR7IJiTwzWPGZhHUjwf+ULggsHUv5yoLWq8+1hQv8M5jCdBbqNlTxZUjfo
         f8zO1mhVqu7tdVMEqlYqI4aDtdHdRoEJhGwF8UdH6kvgKEEuc0c7H9SEu1+GGOOr6Z2T
         hwf8POQF91P8KaUiH3gF2EejYdr6Icq4lmP4JgI3Aza2lZ2Wp6Nh1TOjPSZzNmze47fQ
         fM3dCfRcDBFA24RzreZALtbW+QFamGEdjUfEHKi9dbQ76MqoVkSijElYEXfsvWjM123c
         6PllIGNWP8qKEHeXTv+8jqBR8GeTIMTB5Lx4SBKDB3e+fXpzunXYKn5a9rKCaM3CMNwa
         Pw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=R5zcGcSOUY7Fj/HEQJLFHuvthslegfbkYOXEIdNXqCI=;
        b=7o2NReOcwK8xHGHs+Mo2dVZcbFg+hLStRKzswyxPkfhfkYPVh52rlSEwEiA2SR8BWN
         myXAuK2Z8C39JBoPIW42ILgXm5wYi74Qg3IEainQxXcgRQYSAd2gmgZYJYd0zyqk2qYC
         uSe5JzO1nL1oGwiSrJoB71eeT/zHnunmBwx08CIrncR+bYI6dnLiruPamG5AvMNhfNIy
         Ncvf6RaLYS8NCufhKVvkibn+37my/O7IuVsnwQZNcCN6b3zNVUsNpTMTVE+B1lUDOzqu
         TmrEoM2D8fBtu4qwKCfSMBddfn579sBNgORs6CRJvweL0eOG1XRXaTIvOQ/DOCJv/Kf9
         wGqA==
X-Gm-Message-State: AOAM53389b7fGAUhTtk0Jn9d19xDuioFUrxnOGl8jOxawJs9IunUWXqj
        NYqiWV0C+cLm0FGlsVf7U5w=
X-Google-Smtp-Source: ABdhPJyPE5eduONhCR7g4y0J8xMrzG3YD5NMkxdLXqLbX8FKNhLpRlNPZxt9h8QxvkriVAv0McD5fw==
X-Received: by 2002:a05:600c:1913:b0:389:f643:28a5 with SMTP id j19-20020a05600c191300b00389f64328a5mr17487866wmq.182.1647824859203;
        Sun, 20 Mar 2022 18:07:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c5-20020a5d63c5000000b002040822b680sm5044709wrw.81.2022.03.20.18.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 18:07:38 -0700 (PDT)
Message-ID: <3a0be8dc-088e-facc-977b-49b0179c5668@gmail.com>
Date:   Mon, 21 Mar 2022 02:07:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Exctracting source code from EXAMPLES
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Stephen Kitt <steve@sk2.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
 <20220320232702.351b5832@heffalump.sk2.org>
 <6c13326a-4c9d-0acb-b64e-07b18a01b502@gmail.com>
In-Reply-To: <6c13326a-4c9d-0acb-b64e-07b18a01b502@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 3/21/22 01:02, Alejandro Colomar (man-pages) wrote:
> I like the idea of autogenerating and including a makefile, which allows
> listing the example programs in the process.  In my current makefile, I
> need to run make build-src before any further actions on those files,
> since I don't know them at the time of setting variables.
> 
> I may take some bits from here.

Well, I managed to get everything within the Makefile, with some complex
variable definition; no autogenerated makefiles, and no included
makefiles.  It makes the makefile a bit slow, however, by adding a fixed
initialization overhead:  `make clean` goes from 0.11 s to 1.96 s in my
computer.  2 s is not too much for complex operations, but it's a bit
nasty when you just want to clean, or you just changed one page.  But I
guess any solution will have a similar fixed overhead (or it will be
fast, but will require a separate step such as `make build-src`).

But the result is quite neat and simple, compared to other options:


+SRCPAGEDIRS:=$(patsubst $(MANDIR)/%,$(SRCDIR)/%.d,$(LINTPAGES))
+UNITS_c    := $(patsubst $(MANDIR)/%,$(SRCDIR)/%,$(shell \
+               find $(MANDIR)/man?/ -type f \
+               | grep '$(manext)$$' \
+               | while read m; do \
+                       <$$m \
+                       sed -n "s,^\.\\"'"'" SRC BEGIN
(\(.*.c\))$$,$$m.d\1,p";\
+               done))




+########################################################################
+# src
+
+$(SRCPAGEDIRS): $(SRCDIR)/%.d: $(MANDIR)/% | $$(@D)/.
+       $(info MKDIR    $@)
+       $(MKDIR) $@
+
+$(UNITS_c): $$(@D)
+       $(info SED      $@)
+       <$(patsubst $(SRCDIR)/%.d,$(MANDIR)/%,$<) \
+       sed -n \
+               -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+               -e '/^\.SH EXAMPLES/p' \
+               -e "/^\... SRC BEGIN ($(@F))$$/,/^\... SRC END$$/p" \
+       | $(MAN) -P cat -l - \
+       | sed '/^[^ ]/d' \
+       | sed 's/^       //' \
+       >$@ \
+       || exit $$?
+
+$(SRCDIRS): %/.: | $$(dir %). $(SRCDIR)/.
+
+.PHONY: build-src src
+build-src src: $(UNITS_c) | builddirs-src
+       @:
+
+.PHONY: builddirs-src
+builddirs-src: $(SRCDIRS)
+       @:
+
+


Those two biggie snippets embedded into the Makefile
are similar in essence to the 2 helper scripts you use.
The benefit of embedding them in the Makefile is that I have full
control of it, and can use variables directly from the Makefile.
Also less files :).
And even though it's slower,
I prefer it over having to run `make build-src` manually.


I've updated my 'lint' branch.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
