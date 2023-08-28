Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5793978B1CD
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 15:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbjH1N3B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 09:29:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231451AbjH1N2x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 09:28:53 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B627B9
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 06:28:51 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 18BBF21AC1;
        Mon, 28 Aug 2023 13:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693229330; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=S7Xy3D1BZnFZyWe1o8xb8ILr5x8l8cWVT4iyJYeIceY=;
        b=A3m9WJ1i146W254H0/fhr4urqiRqtUQyURaaJz5BePDh4OxhfRwytmdXi2yrktIP7dDZJs
        wjELC6QX63gdxXhKSs5EcbaPZq5XAD9wsq527td4z8mTRtC36jFr7wVeKgGXJNWC/PH6G9
        2YJxsc+7u0EQzZ9env4PLCLaepKjhfw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693229330;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=S7Xy3D1BZnFZyWe1o8xb8ILr5x8l8cWVT4iyJYeIceY=;
        b=2i4O2FeBcqVloOFeNoM+9hoQ3JRPzQYvsiZMzxL3qKEUwhl6JnfsgCXWRVufJKYDgdOMqd
        3eMUGWTeOLhNv2Bw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7971113A11;
        Mon, 28 Aug 2023 13:28:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id l7lPEhGh7GSkPAAAMHmgww
        (envelope-from <akumar@suse.de>); Mon, 28 Aug 2023 13:28:49 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] mmap.2: fix missing text
Date:   Mon, 28 Aug 2023 18:58:47 +0530
Message-ID: <7094633.DmTEyPuAzL@localhost>
Organization: SUSE
In-Reply-To: <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
References: <20230825155950.17010-1-akumar@suse.de>
 <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Friday, August 25, 2023 11:22:29 PM IST Alejandro Colomar wrote:
> Hi Avinesh,
> 
> On 2023-08-25 17:59, Avinesh Kumar wrote:
> > Signed-off-by: Avinesh Kumar <akumar@suse.de>
> > ---
> > 
> >  man2/mmap.2 | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/man2/mmap.2 b/man2/mmap.2
> > index d0530be0f..9de6b2796 100644
> > --- a/man2/mmap.2
> > +++ b/man2/mmap.2
> > @@ -629,6 +629,7 @@ and is not a member of the
> > 
> >  group; see the description of
> >  .I /proc/sys/vm/sysctl_hugetlb_shm_group
> >  in
> > 
> > +.BR proc (5).
> 
> Was this text accidentally lost in some patch, or was it never added?
> If it was there once, please add a "Fixes: ..." tag for it.
I am not sure if it was ever there.
> 
> Also, proc(5) was recently cut into little sashimi pieces.  You want
> to refer to proc_sys(5).
Ah.. Thanks for pointing this out, I just checked that thread. I'll send the 
updated patch if you are fine with no "Fixes:" tag for this.
> 
> Cheers,
> Alex
> 
> >  .TP
> >  .B ETXTBSY
> >  .B MAP_DENYWRITE

--
Regards,
Avinesh



