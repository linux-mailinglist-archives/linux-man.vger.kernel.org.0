Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A86649AAA
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 10:08:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbiLLJIB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 04:08:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbiLLJH4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 04:07:56 -0500
X-Greylist: delayed 555 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 12 Dec 2022 01:07:54 PST
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E82DA5
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 01:07:53 -0800 (PST)
Received: from orac.inputplus.co.uk (unknown [87.112.76.75])
        by relay05.pair.com (Postfix) with ESMTP id 629CB1A26A7;
        Mon, 12 Dec 2022 03:58:37 -0500 (EST)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 5BE2A2206F;
        Mon, 12 Dec 2022 08:58:36 +0000 (GMT)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     Michael Haardt <michael@moria.de>
cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Andries E. Brouwer" <aeb@cwi.nl>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <E1p4Rdx-0002PO-Kl@moria.de>
References: <20220906191320.447t5awx3rcb5d5b@illithid> <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com> <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com> <20220906204245.hzhq2s7yha6zzgrh@illithid> <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com> <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com> <20221116234049.GA1229865@if> <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com> <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com> <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
Date:   Mon, 12 Dec 2022 08:58:36 +0000
Message-Id: <20221212085836.5BE2A2206F@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

> I don't see a good reason to break an established term and instead
> suggest to follow the above and s/chapter/section/g.

man(1), apropos(1), and other commands use -s to specify sections and
many finger muscles won't change now.

-- 
Cheers, Ralph.
