Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4313E6DABF1
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 13:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231727AbjDGLEE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 07:04:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230189AbjDGLEA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 07:04:00 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A21E5F
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 04:03:51 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id y14so42051483wrq.4
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 04:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680865430; x=1683457430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EWu6r9O11ZhcMfRmLMTLeHpWZg9KbuIE6zfIZryGncQ=;
        b=HwGLOejh2D/RNdA02Qu+bXjJBswFPnG7JT+ARm3hFXDXEw2sGMGRqj6MimjeerTKOL
         obXIpNn4DmOI+c5CHNaboR9juE85xXtlabgQGUzGh9Q6cQVTTiamQ2XxEvs4AZE5WFfR
         IRTLge/wkaOYWgOwU0RW8CNHNZkth9QSQAYEkqrxeXLSVGQ2hSXnXwtR+0mgK09i5RvV
         QgkVvlmdN77wFSdDjF6AxrE2h+ZgW33lGgNzOYoEFu3pZUJC76H5/FRjZz9CWS20xJFY
         nonMJHaHP6GEvMooyVYpdY39tnZ1oy8TkorEWsfU5dqiqL8+AQg6yZtoIRrP/+EXZ+VM
         FF/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680865430; x=1683457430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWu6r9O11ZhcMfRmLMTLeHpWZg9KbuIE6zfIZryGncQ=;
        b=xVu1773hp73IqCyoRe0nrMF9jfuii0XSHEYPeNV2sphB+nTui5YZL/3oq7OqU8bJ/7
         brPWF64RIQF3+iPQEdqTrBFtS36aLbNB3MWhB1BfO14ggQMiJaLm6kyFfUbBAciZH9vy
         NAewf64LisJqt6tdY5vKj1vF6mILPH+suADUehbgS9dS2v6xlk2EZ5BlhX5W9hau/42p
         Zc1vnPVKAdFy1xyKHGa3aq/zOf8kbBI/1CrHsMMIvdiUSuOSpxwB/i+9GEHRaoK6kcBw
         KxCU5JlJZoCrBjSk5EJkhC0SBfs1RTu05lG9ztsF38BkGsxHjkyduClontpZIjA8kuJg
         tJOw==
X-Gm-Message-State: AAQBX9dOfWGRFhhU9cw834/esh1b5jA3dOcpK2jZuN2AHkL+lpCVqbb0
        qdPSQOAiiSDjw4l749CDCro=
X-Google-Smtp-Source: AKy350aYtxlzXrvbrZqQVwIOKOll/zqPRkHEbJ4Iif1vnDOqTo7SjGBTr02ox0hCZCdDoE6RQvRwiw==
X-Received: by 2002:a5d:518b:0:b0:2ef:b137:37fe with SMTP id k11-20020a5d518b000000b002efb13737femr937707wrv.0.1680865430114;
        Fri, 07 Apr 2023 04:03:50 -0700 (PDT)
Received: from localhost (93.7.115.87.dyn.plus.net. [87.115.7.93])
        by smtp.gmail.com with ESMTPSA id b2-20020adff242000000b002d322b9a7f5sm4278981wrp.88.2023.04.07.04.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 04:03:49 -0700 (PDT)
From:   Gavin Smith <gavinsmith0123@gmail.com>
X-Google-Original-From: Gavin Smith <GavinSmith0123@gmail.com>
Date:   Fri, 7 Apr 2023 12:03:48 +0100
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        alx.manpages@gmail.com, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
Message-ID: <ZC/4lA46mZX1nFY0@starmint>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83fs9cp5b9.fsf@gnu.org>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 07, 2023 at 09:36:10AM +0300, Eli Zaretskii wrote:
> This should be possible, but it flies in the face of the feature
> whereby formatted man pages are kept for future perusal, which is
> therefore faster: if the formatted pages reflect the particular size
> of the pager's window, it is meaningless to cache them.
> 
> >   ... Run the command 'sudo make uninstall'.  (If you successfully used
> >   'make install', simply run 'make uninstall'.)  At a minimum, some
> >   directories not particular to groff, like 'bin' and (depending on
> >   configuration) an X11 'app-defaults' directory will remain, as will
> >   one plain file called 'dir', created by GNU Texinfo's 'install-info'
> >   command.  (As of this writing, 'install-info' offers no provision for
> >   removing an effectively empty 'dir' file, and groff does not attempt
> >   to parse this file to determine whether it can be safely removed.)
> >   All other groff artifacts will be deleted from the installation
> >   hierarchy.
> > 
> > Any chance 'install-info' could get savvy as noted above?  (Maybe it
> > already has--I'm running 6.7.0.)
> 
> Why does it make sense to do that?  An "empty" DIR file is not really
> empty: it has instructions at its beginning, which are important for
> newbies.  Also, on well-maintained system, DIR will rarely become
> empty, and if it does, it will soon enough become non-empty again,
> since all the Info manuals installed on the system should be mentioned
> there, and why would we want to imagine a system which has no Info
> manuals at all, not even an Info manual that describes how to use Info
> (which comes with the Texinfo distribution)?

It falls under the same category as the "directories not particular
to groff" mentioned in the instructions.  You want install-info (or
Automake rules) to remove an empty dir file; you could equally claim
that install-info should remove the empty 'info' directory that contains
that dir file.

What are the benefits of removing the file?
