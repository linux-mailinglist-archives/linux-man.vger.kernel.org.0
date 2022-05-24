Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE1765322D6
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 08:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234359AbiEXGHC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 02:07:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232516AbiEXGHB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 02:07:01 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C21D63503
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 23:07:00 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id a13so4481211plh.6
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 23:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yaievRWDEMj8VBtDoF7PE9azYR1cZsx1direHRF5BKU=;
        b=teRX5AFdNbnMQGexW4BMVj6sLPLbcKm/WUNFshCkQYXhvWjPrkyL5MEGXTk9hxhBNq
         LlFLgc3eBFINeiwc5oGtik5kfidbFdU6uv6pQ8YhJTOJ7TpsH5HOZ8Yq9Q3jmLHuhZw5
         /58zQ/yLpYxUqi7LfovuPIbA019H2zMkChHQcL6mshkoxGo5vtsjwvKBiAkJA6oIMExY
         NRFjPcbMXkEkxdktdx65+saSDxKRGLUsCj7rUi6iSerzjnRo14vpBCD6AUp/ERsRhDrH
         Hvr15qzEe2xOJkVC8rduIr/mIY9HHNB1WaDC0rDu7jTbuzSxJjDy61OyJVydRvXWvYyI
         Ja1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yaievRWDEMj8VBtDoF7PE9azYR1cZsx1direHRF5BKU=;
        b=7M77jWHEaxd9HMUL43rxAqgPTWnMKeKAUSe/3vLAWi1naLgypi05A6l6XqMl9kEWn4
         dZs8qc9n1ZmjlD856g8ljgzNhKqK85QeHrA5V141G0Dl8CTtrBFwgM/juF9uBjL86QbO
         8eb4xzo16j9naMp+guDJef21yLX564hXnnJ59TjmJenBSjr6IhC7knmEXQhOJQpXHJdO
         v4buASJo9TDSKQ++BfCHzMMeDBh2PqFwj87lLvVeTdvXjbo18xI3sZ8P62UKKmrDGYMd
         5eDEUbImezirEi4l35q6ZwQxTIjgSUKqEd+kU/+xqvIPy8SBwePmVqc/RHB6+OB6V6yH
         OHgQ==
X-Gm-Message-State: AOAM533+R8+I6bLX03fQ0uj6i1eL8FL3bzkWegQs5LLfAjavOeh7K1SP
        851EjolghOJxYp0RyI06SU2joQ==
X-Google-Smtp-Source: ABdhPJw+JdH2YugWnxvlZRf7JrAou+3/U1mmag+br4JTJvsDcFGn+Rv3/8IZvmEsDSyNlaUttIbEYA==
X-Received: by 2002:a17:90b:4c48:b0:1e0:74b:324e with SMTP id np8-20020a17090b4c4800b001e0074b324emr2952963pjb.134.1653372419509;
        Mon, 23 May 2022 23:06:59 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:7819:7a08:e8dd:fe8f])
        by smtp.gmail.com with ESMTPSA id v17-20020a17090ad59100b001deb92de665sm731335pju.46.2022.05.23.23.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 23:06:59 -0700 (PDT)
Date:   Tue, 24 May 2022 16:06:48 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, jack@suse.cz, amir73il@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <Yox1+Kef8XeQ80Oz@google.com>
References: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
 <60295764-e14c-9570-8ed3-3975c913e72c@gmail.com>
 <Yoxv32sx3OYo4pLh@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yoxv32sx3OYo4pLh@google.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 24, 2022 at 03:40:47PM +1000, Matthew Bobrowski wrote:
> On Sat, May 14, 2022 at 03:12:33PM +0200, Alejandro Colomar wrote:
> > Hi Matthew,
> > 
> > On 4/20/22 00:43, Matthew Bobrowski wrote:
> > > Update the fanotify API documentation to include details on the new
> > > FAN_REPORT_PIDFD feature. This patch also includes a generic section
> > > describing the concept of information records which are supported by
> > > the fanotify API.
> > > 
> > > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > > Reviewed-by: Jan Kara <jack@suse.cz>
> > > Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> > > ---
> > > 
> > > Changes in v4:
> > > 
> > > * Applied style and grammatical suggestions by Alejandro Colomar
> > >    [0]. This includes the use of Oxford-style commas and semantic
> > >    newlines.
> > 
> > I've further edited the patch a bit (only whitespace) regarding semantic
> > newlines.  I'll send it as a reply to this patch in a moment.
> > 
> > Apart from that, I couldn't understand a paragraph.  See below.
> > > +This is a process file descriptor that refers to the process
> > > +responsible for generating the event.
> > > +The returned process file descriptor is no different from one which
> > > +could be obtained manually if
> > > +.BR pidfd_open (2)
> > > +were to be called on
> > > +.IR fanotify_event_metadata.pid .
> > 
> > 
> > > +In the instance that an error is encountered during pidfd creation for
> > > +one of two possible error types represented by a negative integer
> > > +value may be returned in this
> > > +.I pidfd
> > > +field.
> > 
> > I couldn't understand the paragraph above.  Could you maybe rephrase it a
> > bit?  Maybe add some commas?
> 
> I had a read through it and if we drop "for" from that sentence and
> add a comma after "creation", then I think this sentence reads
> perfectly fine. Having said that, is it necessarsy for me to resend
> version 6 (with your semantic newline modifications in addition to
> this minor rephrase), or are you OK with just amending these changes
> when applying the patch?

v6 has been posted [0], which incorporates this change. PTAL.

[0] https://lore.kernel.org/linux-man/83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com/T/#u

/M
