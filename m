Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3311674BEB
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 06:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229724AbjATFPF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 00:15:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231330AbjATFOt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 00:14:49 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82EFB3A865
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 21:03:25 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9629BB8280C
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 03:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E59FBC433F2;
        Fri, 20 Jan 2023 03:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674186199;
        bh=aGQfcyvK7anxlYrQZiqX0NtZLo/sGeNFP64BCZ1BQTE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RXFOAVgrywp5ce+lBH5Az0jRSZ8WIposVLWnM8bcstX4snaVisGyBaNDSQF7xTi+H
         lu+oP6KTRkHc2p5D4zWWwc1/+cZBTO3vYxXq/MfUTO51TE8gjcL961sr43eYGwnM5L
         xBwAtjTUUQBVSPcVzwXnsmj++GwoTa+ITSzt3vbT6XHiH30e6OM9siWq6Le2CG8YKp
         37TQt9FTvA1RULsTubX9w8MneLhuKijtesyMBWxmtgMDGQ3yNm1bL0uHavYjt5/9cD
         VMWFSfA/QtqEpFBDjENMwXWIATp4aBm1CrVn7/HF4JfiY5vdiUs+K4fe8j5DrcU2Qx
         lqXe7RDUTolLg==
Date:   Thu, 19 Jan 2023 19:43:17 -0800
From:   Eric Biggers <ebiggers@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v6 1/5] string_copy.7: Add page to document all
 string-copying functions
Message-ID: <Y8oN1ae9C0UZIaEA@sol.localdomain>
References: <20221215002648.35111-1-alx@kernel.org>
 <20221219210208.10860-2-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221219210208.10860-2-alx@kernel.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 19, 2022 at 10:02:05PM +0100, Alejandro Colomar wrote:
> diff --git a/man7/string_copy.7 b/man7/string_copy.7
> new file mode 100644
> index 000000000..a32b93c01
> --- /dev/null
> +++ b/man7/string_copy.7
> @@ -0,0 +1,855 @@
> +.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
> +.\"
> +.\" SPDX-License-Identifier: BSD-3-Clause
> +.\"
> +.TH string_copy 7 (date) "Linux man-pages (unreleased)"
> +.\" ----- NAME :: -----------------------------------------------------/
> +.SH NAME
> +stpcpy,
> +strcpy, strcat,
> +stpecpy, stpecpyx,
> +strlcpy, strlcat,
> +stpncpy,
> +strncpy,
> +zustr2ustp, zustr2stp,
> +strncat,
> +ustpcpy, ustr2stp

I happened to come across this new man page, and I'm confused by the inclusion
of functions like "ustpcpy".  These functions don't seem to actually exist, so
why are they documented in the man page?

- Eric
