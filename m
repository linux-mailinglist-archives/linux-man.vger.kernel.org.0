Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B620D6DD676
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 11:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjDKJUd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 05:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjDKJUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 05:20:32 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D2E71BF0
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 02:20:29 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.26.20])
        by relay05.pair.com (Postfix) with ESMTP id 50A001A2561;
        Tue, 11 Apr 2023 05:20:28 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 2B1AD21F37;
        Tue, 11 Apr 2023 10:20:27 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: reformatting man pages at SIGWINCH
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <20230410202422.s4xdqcdxzsgdge7v@illithid>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <20230407021822.3grfnenicwjhdive@illithid> <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> <ghwn2nl4yn.fsf@gouders.net> <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com> <ghsfd7k16z.fsf@gouders.net> <20230410202422.s4xdqcdxzsgdge7v@illithid>
Date:   Tue, 11 Apr 2023 10:20:27 +0100
Message-Id: <20230411092027.2B1AD21F37@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

> see man pages as they would have formatted for Western Electric
> Teletype machines, which printed to long spools of paper with 66 lines
> to the nominal page.

In case it isn't obvious, it was normal for teletypes and line printers
to print six lines per inch onto letter-height fan-fold paper perforated
every eleven inches giving 66 lines per real page, not nominal.

As long as the paper was positioned so it started printing just after a
perforation, the page breaks occurred over a perforation.  To allow for
a bit of leeway, the page often started and ended with blank lines.

-- 
Cheers, Ralph.
