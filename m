Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3198532BEF
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 16:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbiEXODC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 10:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232788AbiEXODB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 10:03:01 -0400
X-Greylist: delayed 338 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 May 2022 07:03:00 PDT
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1092865D21
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 07:02:59 -0700 (PDT)
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.95)
        (envelope-from <vincent@vinc17.net>)
        id 1ntV2E-0005Kk-Re;
        Tue, 24 May 2022 15:57:18 +0200
Date:   Tue, 24 May 2022 15:57:18 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E,
 f, F, g, and G
Message-ID: <20220524135718.GA17707@cventin.lip.ens-lyon.fr>
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org>
 <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
 <20220520173043.GC1112518@zira.vinc17.org>
 <CACKs7VAsrEzneeu84quRvw5cRcio-j2rAWyHvQTNZf6_5CqWtg@mail.gmail.com>
 <20220524073937.GO1112518@zira.vinc17.org>
 <CACKs7VDgwmDhiUkx5MXD8KQW5KGHiDqyrL9rHo_+_AMzRQSOvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACKs7VDgwmDhiUkx5MXD8KQW5KGHiDqyrL9rHo_+_AMzRQSOvg@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.5+22 (1066be97) vl-138565 (2022-05-21)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-05-24 15:23:33 +0300, Stefan Puiu wrote:
> OK, now I think I understand what you mean. I guess "a following ...
> conversion" (used all over that man page, as you said) sounds a bit
> weird to me, though it might be proper English, I don't know.

It also sounds a bit weird to me (though this is grammatically
correct), but FYI, the ISO C standard uses the same words: "Specifies
that a following d, i, o, u, x, or X conversion specifier applies to
[...]", etc. So I suppose that there isn't any problem with this.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
