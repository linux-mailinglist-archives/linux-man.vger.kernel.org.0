Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D049D6EB378
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 23:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232572AbjDUVOU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 17:14:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233395AbjDUVOS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 17:14:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CDD272D;
        Fri, 21 Apr 2023 14:14:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E1758652FE;
        Fri, 21 Apr 2023 21:14:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E63C433EF;
        Fri, 21 Apr 2023 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682111640;
        bh=vWCo2pNXsYFs2y6dymmCY0yID55zU1Xi5icS5XRv5nE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q84+4aFEocJz1BzZto0/1o9cGEmFODFWXVxcHjjJz/37P63meMn6EbonzSwEi6DP5
         qVT+PeOxhGJLnhxcSAuIp/MWGFsHEbOv60wU/3YCrbG9Cx0164s2mC5Ey9M1cwb1ir
         Gg26D6j6GOIF2+L2QoaKs4sxPO/YiVBYTSJG0kJtpPD1JOBi5tC+ZXwJsZOrMbzcLA
         SytcLBy1vOZgUIyMnsGAINoSVywlpnPuInI8xRsN8gI40aZD40H+J/gC9bPq+cCcaj
         HYgpTH7HPC5eLWh9Mq5C9mcTvrnsmHg18bjkZdjc4xi1vGLopzG7zsMBM4Bov44UuS
         68zdz39K7dMaQ==
Date:   Sat, 22 Apr 2023 00:13:57 +0300
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Michael Kerrisk <mtk.manpages@gmail.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <ZEL8lVk+tQD7wuny@kernel.org>
References: <20211211153320.17438-1-jarkko@kernel.org>
 <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com>
 <YfNElmmBbkw1Xpfy@iki.fi>
 <0bdb594e-7c3d-e05a-0d40-eff92b4cd252@gmail.com>
 <YhKfA87I0BbkLg+m@iki.fi>
 <623b0792-3bf2-271a-d451-4d4e683ce662@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <623b0792-3bf2-271a-d451-4d4e683ce662@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Mar 31, 2023 at 12:29:06AM +0200, Alejandro Colomar wrote:
> Hi Jarkko,
> 
> I was revisiting old mails, and found this thread that seems unresolved.
> Do you still have the page around and want to send it?

Hi, yes I have it stored in a git fork.

I can send it but I need to reburnish it first.

BR, Jarkko
