Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C15786D4683
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 16:09:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231411AbjDCOJA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Apr 2023 10:09:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231626AbjDCOI7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Apr 2023 10:08:59 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9549326580
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 07:08:20 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 7D64D21D80;
        Mon,  3 Apr 2023 14:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1680530859; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2RYEdE6Q/mQ3hYTM30atE8qHj3eY4rrIFKt8NrXDv6g=;
        b=bZJtQYcIPfNe6tF/tirS7J+x/fVL1Bk/Jy7S1SRZL8Mwp5eN2DTsQ/X6iXYB+X86eOWtLy
        LUldPnRvMmwgR0OdTArRKBcIerm3L1MoE8eYWW5twe9f+8xszFgb5PNiUOiqcSpaVhGZf+
        h0ZCKJ4wWlcDB4OMz+XghRCiDBMAvYI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1680530859;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2RYEdE6Q/mQ3hYTM30atE8qHj3eY4rrIFKt8NrXDv6g=;
        b=dEC7mONjt7UjhQw6CmpKyaH5z10b4VRxIEBjvTuk9TTyzA2hioH6UBhn4YTZmmqiOXpsLm
        MGYcBPcPJktV8UAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6A1C213416;
        Mon,  3 Apr 2023 14:07:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id BzPhGavdKmT7CwAAMHmgww
        (envelope-from <chrubis@suse.cz>); Mon, 03 Apr 2023 14:07:39 +0000
Date:   Mon, 3 Apr 2023 16:08:52 +0200
From:   Cyril Hrubis <chrubis@suse.cz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, David Howells <dhowells@redhat.com>
Subject: Re: Ping: [PATCH] ioctl_pipe.2: Add.
Message-ID: <ZCrd9Fgsh/slVQp4@yuki>
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
 <a60d2199-f35e-8812-77e1-226ac4912490@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a60d2199-f35e-8812-77e1-226ac4912490@gmail.com>
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_SOFTFAIL autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!
Sorry, this got burried in my mbox, v2 on the way.

-- 
Cyril Hrubis
chrubis@suse.cz
