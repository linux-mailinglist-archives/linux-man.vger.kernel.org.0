Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4CA70AD0B
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 10:57:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjEUI5O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 04:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbjEUI4d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 04:56:33 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B01A10DC
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 01:52:58 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96fbe7fbdd4so85543766b.3
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 01:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sc3d.org; s=google; t=1684659176; x=1687251176;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VHhIWWngbhBsG6AYR9t0KM4pkOCBw6H7KdE5DIPNQIM=;
        b=bT4+T/OKH4JMF06OudApWtixzn5IF72R52WvaQwk9MWQU85PeyV+u8QezrmY++6WXQ
         tAJSeAn6PIpMC3HNsdMTMQhB9xbGRbg0gWMRnIg/Jc9LyyHQHMRD8ueoPOSAEbTDN10V
         OaNabcHMV274juqDRnSjPGwzbofLnhrx0IbLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684659176; x=1687251176;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VHhIWWngbhBsG6AYR9t0KM4pkOCBw6H7KdE5DIPNQIM=;
        b=faq65y0rhUhQLhPcncyGHKN/Qd1tmk9Sq8kZN49Fg2SSiZ26oHfj641c0+TqhriUtl
         s8V4aNBL3mroFcYrhQJbf6LjV/ycRevJ7YGHGjr8rfDUlFo7/mSvwq0/YhdDAN5ej1Ui
         Nf6G9hTrg+mka3Yli0MMz/tcTBipIfnITLOhz4QiovszTePUov+SHo0wiPCbb0fJW96a
         ZE/iFBkE+yXKB8jSPkyfZwKTJEiKd0RmSfEvNng5rZI0YMyBjpp78K0CLpShB31Yhww2
         Yb0Cj771seck8t+SWp5E4RAMKkXYKffnRRJjFRpafeLM7eR+MOoOs9t/a0QUCNUx0zz/
         VAXQ==
X-Gm-Message-State: AC+VfDwL1JBVzbFyfpb5CLg89PrHkO8ScXbXskuXZkbClmjqNNcByo8q
        CElH3E3y9q6igvG9pxnHKNXNv+XcxQXXYF8Z3Y6QOg==
X-Google-Smtp-Source: ACHHUZ6e65woMYH/Q4FwkdVpH7M4bID3jXmMMO+z4fI1kxBNP0wzBpOFgTXD+SdSHNDIHmgo/49oNZ7rcdjHzvCSOXQ=
X-Received: by 2002:a17:906:34d3:b0:885:a62c:5a5c with SMTP id
 h19-20020a17090634d300b00885a62c5a5cmr5296574ejb.46.1684659176332; Sun, 21
 May 2023 01:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnWdoiYKybuDioeG01szmZAL_zkoU4RTqiP=ca6z6bqVj+OQA@mail.gmail.com>
 <20230520120458.6681-1-alx@kernel.org>
In-Reply-To: <20230520120458.6681-1-alx@kernel.org>
From:   Reuben Thomas <rrt@sc3d.org>
Date:   Sun, 21 May 2023 09:52:44 +0100
Message-ID: <CAOnWdoisCRcGwv_PO_LuRi+vdHnZA29oeZGOC5ndYOTbu4LFqA@mail.gmail.com>
Subject: Re: [PATCH v1b] iconv.3: Clarify the behavior when input is untranslatable
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>,
        Bruno Haible <bruno@clisp.org>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 20 May 2023 at 13:08, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> I'm resending Reuben's patch inline CCing all interested parties.  I'm,
> similarly to Steffen, not convinced that invalid input englobes output
> errors.  So, I think it would be better to split it into 2 different
> reasons, so that we have a 5th reason for the error.
>
> I also slightly tweaked the commit log regarding formatting.

Many thanks!

> What do you think about having a 5th reason?

You're right that it is a different logical condition; my only concern
is that the new working make it obvious that this condition results in
EILSEQ, to avoid the confusion that myself and others have had over
the years from believing that EILSEQ only results from invalid input
(from reading earlier versions of this man page, and the POSIX
standard).

-- 
https://rrt.sc3d.org
