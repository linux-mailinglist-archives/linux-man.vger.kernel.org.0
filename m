Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F03234BD12B
	for <lists+linux-man@lfdr.de>; Sun, 20 Feb 2022 21:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238202AbiBTUFI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Feb 2022 15:05:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234114AbiBTUFI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Feb 2022 15:05:08 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2C3D4B869;
        Sun, 20 Feb 2022 12:04:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5CD26B80DBF;
        Sun, 20 Feb 2022 20:04:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82C81C340F0;
        Sun, 20 Feb 2022 20:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645387484;
        bh=OChxHZfNI+1N07VreIQzaoVdtEd8W6WVSjom4udJg9M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=H40wTH7ieQmU6lagNgWWmC0gB6ok09qIsMUJNQV2EufOpaAnoFIR9v9yh2mREdY32
         2h8OuzIFOeKy0bnPzd8/Ef2BvanKWyP/hKfz5akaWal9k8GhppriHlIjoryLclpuH7
         P95i49+YZ0efu9CUaY9YZCu8bDufU67BDFLQYD5NGevUW70AOIMZdnJt16f016BDS9
         w76Vyqst6GLVELzzZAh34wePuwt3+oaDehm8yyy4+vnAWeke/CufVrIemRnQzY8qOa
         gxhMzMTNCy4154rqjyBgVUTsKuVrdqpMaeHoIQDdYUIvN60hcZBYqOGQ85drx2hBlO
         YQMTT0rbYyYtw==
Date:   Sun, 20 Feb 2022 21:05:23 +0100
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Michael Kerrisk <mtk.manpages@gmail.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YhKfA87I0BbkLg+m@iki.fi>
References: <20211211153320.17438-1-jarkko@kernel.org>
 <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com>
 <YfNElmmBbkw1Xpfy@iki.fi>
 <0bdb594e-7c3d-e05a-0d40-eff92b4cd252@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0bdb594e-7c3d-e05a-0d40-eff92b4cd252@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 09, 2022 at 09:19:54PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Jarkko,
> 
> On 1/28/22 02:19, Jarkko Sakkinen wrote:
> > On Fri, Dec 17, 2021 at 02:50:56AM +0100, Alejandro Colomar (man-pages) wrote:
> >> Hi Jarkko,
> >>
> >> Please see some comments below.
> >>
> >> Thanks,
> >> Alex
> > 
> > Thank you. I've addressed all the comments below. However, I feel that
> > /dev/sgx_provision is not properly documented at all. I also think that
> > Reinette's argument for v10 was fair that "remove VEPC" ioctl that QEMU
> > uses should not be left out from the initial patch set.
> > 
> > I'm implementing user space that doest attestation, so I rather write a
> > proper description of the attestation, once it is working, rather than add
> > to the number of review rounds.
> 
> Fair enough.  Please send an v12 with those comments addressed, and I'll
> merge it!  (if you miss anything, we'll fix it later, don't worry)

It took me two weeks to do the remote attestation implementation for Enarx
project [*] but I needed to do it before continuing with the man page. I'll
continue with this some time next week. It's not exactly directly attached
to kernel API but I think it is good to bring some context on that.

[*] https://github.com/enarx/enarx/pull/1329

BR, Jarkko
