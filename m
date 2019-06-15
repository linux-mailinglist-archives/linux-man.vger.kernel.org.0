Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE9F946E6E
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2019 07:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725820AbfFOFPj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jun 2019 01:15:39 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:34545 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725786AbfFOFPi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jun 2019 01:15:38 -0400
Received: by mail-io1-f66.google.com with SMTP id k8so10437796iot.1
        for <linux-man@vger.kernel.org>; Fri, 14 Jun 2019 22:15:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=p0ZFpdGc/1K1QbJheMDLzOr4TZfl1GEBorb3h5uUCUY=;
        b=BUa8fHAO/8HV/sG516Jia8UxINdr4Kn6lEIuLko6TpjIYO/jAstLDAtWo3MSj9+V+s
         D0YMAPc6W82EnOXZG45mZ+Xlo9Oixw5fSqrv7NdS4kMLYOlHBe3nCUFFKWR2Znk7IjiF
         PAw1TzRrTwWAbEnw/PY32hDMoperIKLOQ27SjvzcddhHLhjK3D1L3dzCgmRBBm6Ypyvn
         83etZs8eeofJVbxJ71rE+VaPFONUrqhf6AdTeCkdgVVavF4ewwol/MLXJvhNNFG/u+Ym
         p33M4op8HV8WgPCQBS61dqusBkg4myx1ShzuhfJMSaKQbkOCbaI03xey47SYBmkjP6FX
         Pj2w==
X-Gm-Message-State: APjAAAVbWkfqsaC8AcZOO02ZhHcOW4+wFunjNamhMIu0MGVN3jbZhsFA
        VIFjTG2/FtwE0R373gSG0CmJQmNXHoAYpPKGRxKZOBujziM=
X-Google-Smtp-Source: APXvYqyT2GfCT/XnTMifabul41vjZ6mwPRTUiq8Srub2PPtqtnv64K3bJC+QGkbUosG2skOGZuYsGLnFXucTxN7fbyw=
X-Received: by 2002:a5e:820a:: with SMTP id l10mr5265844iom.283.1560575737996;
 Fri, 14 Jun 2019 22:15:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190507211735.31785-1-kerolasa@iki.fi> <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
 <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com> <6cabac85-5762-d36f-4c74-71683320ba2b@gmail.com>
In-Reply-To: <6cabac85-5762-d36f-4c74-71683320ba2b@gmail.com>
Reply-To: kerolasa@gmail.com
From:   Sami Kerola <kerolasa@iki.fi>
Date:   Sat, 15 Jun 2019 06:15:26 +0100
Message-ID: <CAG27Bk3VCcEAJrzbX97wTEE4D2LAvz=znwWHcAV2n1kR5D76xw@mail.gmail.com>
Subject: Re: [patch] on_exit.3: Add example code
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 14 Jun 2019 at 15:22, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> I'm quite confused by your terminology and your example.
>
> Above you've talked about heap variables not being in scope for
> the exit handler established by on_exit(). And in your initial mail,
> you said "In short only variables allocated from stack make is
> sense when calling on_exit()."
>
> But your code examples above demonstrate exactly the opposite, as
> far as I can see. 'broken.c' use *a stack variable from main()*
> as the argument for the exit handler, and that does not work.
> 'works.c' used a *heap variable* as as the argument for the
> exit handler, and that *does* work, as your example demonstrates.
>
> The fact that stack variable from main() are not in scope for
> on_exit() after a return from main() is pretty much expected,
> since main() has gone out of scope already.
>
> However, it's not clear to me that heap variables are out of
> scope for the exit handler. Your example doesn't demonstrate
> that. And, offhand, I can see no reason why heap variables
> would have to be out of scope. And my own experiments (see test
> program below) seem to indicate that heap variables are in
> scope. My only doubt is what the standards have to say on the
> issue, but I did not so far spot any relevant text.
>
> Your thoughts on the above?

Hi Michael,

Oh sorry, I mixed up terminology.  I should have said 'allocated memory' and
'local variable' in function that calls on_exit() instead of heap and stack.
Trouble of non-native english and words that at least I associate nothing
but large quantities and piles os stuff without much distinction.

Anyway, the code example in my previous email demonstrated how one might
think local variables could be used (incorrectly).  In hindsight use of
local variables is wrong, and that is the point.  Allocated memory can be
passed to on_exit() and nothing else makes sense.  While one could pass
global variable to on_exit() in that case more portable atexit() is better
option.

Recommendation in 'confirming to' section to avoid this function in portable
applications is good.  Whether telling on_exit() is mostly useful as a hook
to unallocate memory just before exit might be worth while.

-- 
Sami Kerola
http://www.iki.fi/kerolasa/
