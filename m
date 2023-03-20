Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84F26C0BF6
	for <lists+linux-man@lfdr.de>; Mon, 20 Mar 2023 09:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjCTIPn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Mar 2023 04:15:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbjCTIPl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Mar 2023 04:15:41 -0400
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E5C1BF
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 01:15:33 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id n2so12173465qtp.0
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 01:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679300133;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N5MnAS7jsFS9foqLP7Mel23DPsK8B42JdAq8N1vitq4=;
        b=eXOJCJNsILLeGmn3kPfm82wAF3zBeuqmx8PdZs9ETdIGheYeDNgXG2O72uGvpZXobx
         TEpqkFxoKbtw53ZAWdOyZz2Ej1NZ4498YQr0QKljALhGweFCViJJ8abBMIx9NkYuu3Mt
         gCaHNyAJ3K5/005SbjpF0b2tAks+uOCK9kQKFRvDwx9XWpcb9QMnkl+gah+8UsYcQaRo
         mrn03HSL5UCldgvy5NHV3Re2ntfkYZOaGrfHJxXVw3v9S7/mEhiyXpW4FSMOnW4vc/n5
         AanrjLLqtlmp3GVMN01H1eaUYu30c0LphuVixaalOW2esUEBqnHFkdxV9NAcCOIqz5B7
         usvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679300133;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N5MnAS7jsFS9foqLP7Mel23DPsK8B42JdAq8N1vitq4=;
        b=peDe5EPL8P8Bz+d/eDQdQV2Pxt31NduPrb6qLCYDsNYcr04VggWyA1tZCEd6bWFEaT
         QwUWvjj3gvkn1QEEChPfVMz9rEJok6NoLfbJ7PZIw+WJObLIdkfyQl9fKbhgOIDSjTV5
         y1HLS3K1WsOJnVU89/lM5HmtHfgmy7BXjG7BKjpHOBmpz4vuPvcogDHKQoThspvStM9R
         N7VxbyrJ8KZlB/c13qTxFstOjbm63agfYU+AxQjgpHsm3/cyCi6OyGRJmlRDlZf9ruAF
         UpncEHCgboiBRFdYVjzSlBHLitWqwvfPSK651I++1n/WEW+xRLodwmw1VhSB9JHOnyOj
         cSLA==
X-Gm-Message-State: AO0yUKXfjV8+t0nex5dI46elHLrs3rYM95ltJ/yG3mdNbtK2C/nW2iMx
        M6BBv55ssLZ90GNVZDhqUQ8CBu8NTSWTavA2+9U=
X-Google-Smtp-Source: AK7set8sZRNmZ8MJt/zr+GE5dG2Ts/e9XZ9/gTZX1kHi8zhe7+NIhhy9QZv0dFwwMvtz5Sv83VX+v9XUsAG2DhdJ3eU=
X-Received: by 2002:a05:622a:15cf:b0:3e1:3cc8:98b5 with SMTP id
 d15-20020a05622a15cf00b003e13cc898b5mr1052560qty.4.1679300132848; Mon, 20 Mar
 2023 01:15:32 -0700 (PDT)
MIME-Version: 1.0
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Mon, 20 Mar 2023 16:15:20 +0800
Message-ID: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
Subject: Request to update feature_test_macros(7) wrt FORTIFY_SOURCE
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

It might be a good time to update the _FORTIFY_SOURCE bit in the
f_t_m(7) manpage. Specifically:

We currently have it stuck at level 2. Since level 3 is now a thing in
gcc and clang with the introduction of __builtin_dynamic_object_size,
we should add it. The language should be similar to the level 2
description, with the difference that level 3 is able to evalulate
dynamic sizes. There are two articles from Redhat about this new
level: one from when only clang had it[1], and the other from when gcc
added it too.[2].
[1]: https://developers.redhat.com/blog/2021/04/16/broadening-compiler-checks-for-buffer-overflows-in-_fortify_source#in_the_very_long_term__everything_is_dynamic
[2]: https://developers.redhat.com/articles/2022/09/17/gccs-new-fortification-level

The other point relates to clang, in that we should mention that it
has it too since svn revision 55735 (2008). I will take some time to
track down the released version number. We also need to mention when
gcc and clang added the level 3 stuff.

I plan to send a patch on this stuff, but do be warned my man(7) and
git send-email are very rusty.

Regards,
Mingye Wang (Artoria2e5)
