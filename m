Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0BFC6DBA75
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 13:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbjDHLkS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 07:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229696AbjDHLkR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 07:40:17 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C81A4ED2
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 04:40:16 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.67.239])
        by relay05.pair.com (Postfix) with ESMTP id BB4521A26F4;
        Sat,  8 Apr 2023 07:40:15 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id F16772083C;
        Sat,  8 Apr 2023 12:40:14 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man@vger.kernel.org, groff@gnu.org
cc:     Eli Zaretskii <eliz@gnu.org>, Dirk Gouders <dirk@gouders.net>
Subject: Re: reformatting man pages at SIGWINCH
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <ghwn2nl4yn.fsf@gouders.net>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <20230407021822.3grfnenicwjhdive@illithid> <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> <ghwn2nl4yn.fsf@gouders.net>
Date:   Sat, 08 Apr 2023 12:40:14 +0100
Message-Id: <20230408114014.F16772083C@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

> > > (1) what part of the screen was the reader actually looking at?

less(1) has -j; that would be a good start.

> > > (2) how is the pager supposed to know how to map any given
> > > location on the screen back to a place in the unrendered source
> > > document so it can be accurately found when the document is
> > > rerendered?

I would assume the pager looks for the same place in its input, not in
the man-page source.  It keeps seeking forward to the best matching run
of words, jumping to the best so far.

Problems I can think of:

- the formatter's input may be ephemeral and so need buffering,
- the originator may not have intended that and limited its size,
- seeking the best match after being WINCH'd must also buffer and may
  never reach EOF,
- the input formatter may alter its output based on the terminal's size,
  e.g. a pic(1) diagram disappears, and
- a solution which re-starts the pager loses the pager's ephemeral
  settings.

I expect more would be found in practice.

-- 
Cheers, Ralph.
