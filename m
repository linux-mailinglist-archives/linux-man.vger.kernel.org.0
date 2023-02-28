Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7626A6042
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 21:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjB1UV2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 15:21:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjB1UVZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 15:21:25 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC4EA33467
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:21:23 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l1so8014576wry.12
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677615682;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WkyiKqJQc1qClqcL0ZEBnS4AAGWoluhRdrr0NLs/NXY=;
        b=K5USxC/7ljvFMszvHJkrXDEYMlG/AsGzm+/YU2+UvYqN7MkfOoh34xGFCMXvXrqg2S
         uTxoTkCW83nfakz5ktX8G3+Ucf7NATuqiWLU9FLhQU1f9m4QJo9e0EOMCC3mZ9xkliEJ
         wacK1mY2bbicfm56TXPtFtOxdvlMSUs82+zNpYK4Ld4W98vYXuxbwBEYquCW02DpuMrv
         ydULKcQcWjb10bIgt7NueC7YaHntxvCO+j5BcZk8kJJI25023/+Y/xMcyG/irT/FERfJ
         aOT+2yjR8ITZO/x+LmawydrO6iFE90eHUHE4ka4ygTBmxxUbt6gaL7O+yCxDLhXMlk03
         rpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677615682;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkyiKqJQc1qClqcL0ZEBnS4AAGWoluhRdrr0NLs/NXY=;
        b=CuFR3JxvognKAo696RB0wSp2FUnB514SiglDo6C2AHz9kvEWpnka5iLv7v2xkgu3l7
         cLZNBs0Zw8hnnNEm2D+wo8Cd3rIaUQNu+MQGjt4wJN5sA3ceGZktNa9ZV92QPDQHQkh/
         MKzvcDazMDU7EGvMbcfJ6e90uFLNEEibe4ittyzdq8/Kj28ma/F1jMRY8epx7PkaDuY4
         BKgqHx5IdYS3Z9O+xm5we62LcEufLzxTFOLN5XTJENsLATVwy6bqxiZUwamEuT3klczA
         zkqnSP9ILiMXSDgfAYamXq6tRmNCc71ixiiNX3Xqe46PJPYIwYTOMhFk+lYYGWFp9qpe
         toRQ==
X-Gm-Message-State: AO0yUKW/2dmkbiwQAAMG3BqchFtvlODQjxjRXZUlGPbJy3vWRUk52PbW
        hjqV2bac9PbffKu71w8sOuA=
X-Google-Smtp-Source: AK7set9CZTxdu20D2yhQQ1VpXXHHWJeI9Z71qleOAC+5SJF8MVX0Q9/wATF9Jr9VLO9Nh0K40XMK9A==
X-Received: by 2002:a05:6000:12c3:b0:2c7:84e:1cfa with SMTP id l3-20020a05600012c300b002c7084e1cfamr2961557wrx.40.1677615682077;
        Tue, 28 Feb 2023 12:21:22 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id l1-20020a1c7901000000b003e2058a7109sm16884584wme.14.2023.02.28.12.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 12:21:21 -0800 (PST)
Date:   Tue, 28 Feb 2023 21:21:20 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <Y/5iQKyLlNgsXwzt@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <647fd07b-6294-80a7-fd43-e5728d0834b1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <647fd07b-6294-80a7-fd43-e5728d0834b1@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex!

Thank you for the review! Please see answers inline:

On Sat, Feb 25, 2023 at 12:21:43AM +0100, Alex Colomar wrote:
> On 2/21/23 21:50, Günther Noack wrote:
> Please have a look at man-pages(7):
>    Use semantic newlines
>        [...]
> 
> Here,
> that would mean
> breaking the line right before the opening parenthesis;
> please also apply it to the rest of the patch where appropriate.

Thanks,
I applied this
so that the text is properly formatted now,
according to man-pages(7).

> > +.IP \(bu 3
> 
> We now use \[bu] instead of \(bu (they are equivalent).

Thanks, applied.

> 80 columns is a strong limit.
> Using semantic newlines as suggested above should fix this.

Done.

> > +.TS
> > +box;
> > +ntb| ntb| lbx
> > +nt| nt| lbx.
> > +ABI	Kernel	Newly introduced access rights
> > +_	_	_
> > +1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> > +\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> 
> What character do you want here?
> If you want ASCII 0x5E,
> then you want to use \[ha].

I don't want it to show a character there.  The intent is to make the
table cells for ABI version and kernel version span across multiple
rows, for the case where a single kernel version introduced multiple
access rights at once.  \^ is a data item in the tbl(1) syntax which
has that special meaning.

https://manpages.debian.org/testing/groff-base/tbl.1.en.html

    A data item consisting only of ‘\^’ indicates that the field
    immediately above spans downward over this row.

> > +\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
> > +\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
> > +_	_	_
> > +2	5.19	LANDLOCK_ACCESS_FS_REFER

Thanks for the review!
–Günther
