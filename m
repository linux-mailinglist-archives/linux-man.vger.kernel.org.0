Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E54854F8C9
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 16:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234937AbiFQOAZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 10:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbiFQOAY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 10:00:24 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A023149C95
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 07:00:23 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id 140so2023619vky.10
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 07:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GXQivD5EQ+Rs6JbuvHivvCMrJkJP3EX2dp2VS0uAh1M=;
        b=bJIqKVo9h612cfxAeo2coUXv282khyoJxqhdjbjYYY6UVL5JYTciz0JLPBn5rSsIcV
         KgfgAoc5MCT73yRuavnVpCNo+fZ0dXPlDrBn5qe64MCD44+Wk7IC5HoIrkbrstT0RJs5
         ZJsRUWT/asyZBIeP2H4XsltqAgl/6wpFP11f3X3hTbz23PrKkhPrJuj7DmPrGDHtNGXq
         O7ge/ZhTgcOjJoGcuBW5JKZFg16X/MovP0AX61Z9oHHRyRmpeuJ1I8OF63saoEdPCLvW
         OzjmHkfFtkACuDLP+z/QGB0UJq6mMShXxMAyH0CZaVepJapWfk6gLKpYpj7D7+H6+mdy
         KiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GXQivD5EQ+Rs6JbuvHivvCMrJkJP3EX2dp2VS0uAh1M=;
        b=qnjOhmHNRejwG/x+3dwF/mqAnhYsobqm4JtZLjil0JCfRih2YngfRTlIOBHpNtZfL2
         v1LZT79LpwLUUhhRF0W+j3f3uA1xyQP6ajb8ntnWMfsF2DjRhU2mh7NBfWO7U5HcibHl
         TFzZ+a2r33bP+e5wSeYzOHpDvmTu1GS96hMqnA8Wb5tGADW+BibzXC29ytsmPEjqKDD0
         Ulq9f8X06h6GvHjKgUFWrwn8DyBBtThvXKh9MR3jHG+XfMkqQ6loxLbregbwhXY7ENgB
         CXv1u8tBcDDX2larLMZ8TSGAhbx99hxB0T9nobx8dLI/ojAbjoE/c6YaWi17s7DE1ab2
         aaBQ==
X-Gm-Message-State: AJIora/qpfQiSlKa/ptFUCC1BjsftVoYmjf9IOkt+bEy4Hn1V57wBe0e
        ingpzaZhJMfr/Dy6ngvV82bOUN/EbLzSxhttLB4=
X-Google-Smtp-Source: AGRyM1u7uNiOqHJ6w79McYdPXSy36dx5kaYRi1qgpkOf22IqU6NqW6s7j3V5keC/vQMNAq9McVLztmeHJWVgFRcj0uU=
X-Received: by 2002:a05:6122:214d:b0:35d:94e0:55fb with SMTP id
 m13-20020a056122214d00b0035d94e055fbmr4657359vkd.3.1655474422714; Fri, 17 Jun
 2022 07:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220617131158.1661235-1-amir73il@gmail.com> <20220617131158.1661235-3-amir73il@gmail.com>
 <b6c66d7a-4a1c-6a05-e609-eeb8d95f58fb@gmail.com>
In-Reply-To: <b6c66d7a-4a1c-6a05-e609-eeb8d95f58fb@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Fri, 17 Jun 2022 17:00:10 +0300
Message-ID: <CAOQ4uxg4OYemGVSnAaFq18tWuKBByJh-3azuJCH1CdSy6sXo1Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2:
 Document FAN_RENAME
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 17, 2022 at 4:53 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> On 6/17/22 15:11, Amir Goldstein wrote:
> > FAN_RENAME is a new event type that includes information about
> > both old and new directory entries.
> >
> > It is a successor of the two separate FAN_MOVED_TO/FROM events,
> > but those event types are still supported.
> >
> > Reviewed-by: Matthew Bobrowski <repnop@google.com>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>
> Please, also check some minor comments below for this patch.
>
> Cheers,
>
> Alex
>
> > ---
> >   man2/fanotify_init.2 | 21 +++++++++++++++++----
> >   man2/fanotify_mark.2 | 16 ++++++++++++++++
> >   man7/fanotify.7      |  4 ++++
> >   3 files changed, 37 insertions(+), 4 deletions(-)
> >
> > diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> > index ac4d3a305..bf87f394b 100644
> > --- a/man2/fanotify_init.2
> > +++ b/man2/fanotify_init.2
> > @@ -173,6 +173,7 @@ Additionally, it may be used for applications monitoring a directory or a
> >   filesystem that are interested in the directory entry modification events
> >   .BR FAN_CREATE ,
> >   .BR FAN_DELETE ,
> > +.BR FAN_RENAME ,
> >   and
> >   .BR FAN_MOVE ,
>
> See below.
>
> >   or in events such as
> > @@ -257,6 +258,15 @@ For the directory entry modification events
> >   and
> >   .BR FAN_MOVE ,
> >   the reported name is that of the created/deleted/moved directory entry.
> > +The event
> > +.B FAN_RENAME
>
> Why does RENAME appear sometimes after and sometimes before MOVE?
>
> > +may contain two information records.
> > +One of type
> > +.B FAN_EVENT_INFO_TYPE_OLD_DFID_NAME
> > +identifying the old directory entry,
> > +and another of type
> > +.B FAN_EVENT_INFO_TYPE_NEW_DFID_NAME
> > +identifying the new directory entry.
> >   For other events that occur on a directory object, the reported file handle
> >   is that of the directory object itself and the reported name is '.'.
> >   For other events that occur on a non-directory object, the reported file handle
> > @@ -301,14 +311,17 @@ will be returned.
> >   For the directory entry modification events
> >   .BR FAN_CREATE ,
> >   .BR FAN_DELETE ,
> > +.BR FAN_RENAME ,
> >   and
> >   .BR FAN_MOVE ,
>
> See above.  There are more cases below.  Please check all of them, and
> try to be consistent, if no other more important reason applies.
>

The only reason is to minimize changed lines.
Consistency is more important, so I'll fix this up.

Thanks,
Amir.
