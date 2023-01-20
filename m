Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA205674AC9
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 05:36:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbjATEgX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 23:36:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjATEgB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 23:36:01 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB06FC13DF
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 20:33:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9692BB82815
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 04:09:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 103E9C433D2;
        Fri, 20 Jan 2023 04:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674187753;
        bh=wAI8LfOPMvRXC46lkLljaX8lEV4lt5nx0bVrmWL857Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rspNoV6ImT6mBL4BbujbG/YRwwMHGpu6mxfkO84MXNVGNmkBCMrvwf54kk+Aam6yn
         Ybibvl243LzCPh9Pldu/zMI0RVy+aVM6sFveLLq3FKHPlHCZ+00C7KLZSNyAIo9/S7
         kx1p5ezqxYzLw90Nd2TrbIm2qaQ/F9JafhsjEzGdLhmMBg2VgiGXo/TqYzby3mbE5Q
         46ntnzJIBjXgOT2+RjhCllnonRAobGrxfarRQ2QCjc5lhYJu1jTzVuobLakQnJnNC+
         soaEhxjhwgvECWcdsjXJS1dvcwzOZ4FKslaZZhPYuctUfPqeQevwvBdK1NYk+nQ3AQ
         ov9yROMOniY7A==
Date:   Thu, 19 Jan 2023 20:09:11 -0800
From:   Eric Biggers <ebiggers@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Message-ID: <Y8oT53gEtkAOX0Zb@sol.localdomain>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On Mon, Dec 12, 2022 at 12:33:08PM +0100, Alejandro Colomar wrote:
> > Documenting `ERANGE` in the ERRORS section kind of implies that
> > `scanf()` should return `EOF` when an integer overflow is encountered,
> > which it doesn't (and doing so would violate the C standard).
> > 
> > Just remove any mention of the `ERANGE` error to avoid confusion.
> > 
> > Fixes: 646af540e467 ("Add an ERRORS section documenting at least some of the errors that may occur for scanf().")
> > Cc: Michael Kerrisk <mtk.manpages@gmail.com>
> > Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> 
> I applied the patch; thanks!  And also applied another one explicitly
> marking all those numeric conversion specifiers as deprecated:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=a15d34326c581eab107bf05782cc60d8ebdcad69>
> 
> Cheers,
> 

This is commonly used functionality with no replacement suggested.  Should it
really be deprecated?  Is the undefined behavior here a real world issue
anywhere, or is this just a theoretical issue based on interpretation of the C
standard?  Perhaps instead of a deprecation, this just deserves a mention in the
BUGS section of the man page, and a request to the C standard committee to fix
the text in the standard to make the behavior defined?

I'll note that memcpy() is not deprecated, even though the C standard has a bug
where 'memcpy(dst, src, 0)' is undefined if either pointer is NULL.  That's a
very similar sort of issue.  The fix, of course, is for implementations to
ignore the defective standard and make the behavior defined...

- Eric
