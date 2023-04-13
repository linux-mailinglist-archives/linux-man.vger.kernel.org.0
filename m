Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5537C6E0B1A
	for <lists+linux-man@lfdr.de>; Thu, 13 Apr 2023 12:10:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbjDMKKQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Apr 2023 06:10:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230236AbjDMKKC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Apr 2023 06:10:02 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D56A974A
        for <linux-man@vger.kernel.org>; Thu, 13 Apr 2023 03:09:53 -0700 (PDT)
Received: from orac.inputplus.co.uk (17.101.125.91.dyn.plus.net [91.125.101.17])
        by relay05.pair.com (Postfix) with ESMTP id 245A01A2681;
        Thu, 13 Apr 2023 06:09:53 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id C65642136E;
        Thu, 13 Apr 2023 11:09:51 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Subject: Re: Compressed man pages
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org> <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org> <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada> <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org> <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net> <44768e26-ed92-0562-2318-68fec781126b@gmail.com> <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
Date:   Thu, 13 Apr 2023 11:09:51 +0100
Message-Id: <20230413100951.C65642136E@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mingye,

> [Zstd and brotli each have a "dictionary mode" to deal with this, but
> (a) Zstd dict-file requires an extra flag on decompress (b) nobody has
> brotli, which has a default dictionary, installed.]

I found brotli was already installed here.
So here's some numbers, just for the lists' info.

    $ ls | grep '\.gz$' | shuf -n10 |
    > while read -r f; do
    >     printf '%32s  %5d  %5d\n' "$f" `wc -c <"$f"` \
    >         `zcat "$f" | brotli | wc -c`
    > done |
    > awk '{print $0 "  " $3/$2}'
			postmap.1.gz   4125   3333  0.808
	       gnutls-cli-debug.1.gz   2627   2108  0.802436
			  cwebp.1.gz   5074   4106  0.809223
			findsmb.1.gz   1810   1474  0.814365
			ppmntsc.1.gz   1282    973  0.75897
			  libuv.1.gz  76363  62274  0.8155
			  xmlwf.1.gz   3486   2760  0.791738
			  users.1.gz    763    572  0.749672
		   gpgparsemail.1.gz    294    231  0.785714
	       perl561delta.1perl.gz  51764  42957  0.829862
    $

-- 
Cheers, Ralph.
