Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D544E1DF8
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 22:26:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234488AbiCTV1m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 17:27:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343740AbiCTV1l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 17:27:41 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AF2E18A3E9
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 14:26:16 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1nW342-00C48d-7h; Sun, 20 Mar 2022 22:26:14 +0100
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1nW341-003mkz-EK; Sun, 20 Mar 2022 22:26:13 +0100
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1nW341-0008FK-Qp; Sun, 20 Mar 2022 22:26:13 +0100
Date:   Sun, 20 Mar 2022 22:26:13 +0100
From:   Ingo Schwarze <schwarze@usta.de>
To:     alx.manpages@gmail.com
Cc:     steve@sk2.org, g.branden.robinson@gmail.com,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Exctracting source code from EXAMPLES
Message-ID: <Yjeb9VPXl0+ITuIr@asta-kit.de>
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Alejandro Colomar (man-pages) wrote on Sun, Mar 20, 2022 at 09:34:47PM +0100:

> I have ready some code to extract source code from EXAMPLES in man-pages.

Frankly, i don't see the point at all.

Manual Pages are not HOWTO documents that mindless users are supposed
to copy from verbatim without understanding what they see.  Instead,
the are supposed to be read with your brain switched on and the reader
is supposed to *apply* what they learnt, not copy it.

> .\" SRC BEGIN (program_name.c)

Ugly as hell.  I would very strongly object to have anything
like that added to any manual pages i maintain.  When people add
comments in order to convey syntax and semantics to a machine,
that is a sure sign that the design of whatever it is intended
to achieve was totally botched.

> The next step will be to add targets to lint and compile the produced
> files, to check their correctness.

If any code snippet from an EXAMPLES section does compile, i would
argue that it is severely ill-designed as it obviously contains lots
of needless fluff that distracts from the point the example is
actually trying to demonstrate.  It ought to be stripped down to
what really matters, to become shorter, more readable, and more
to the point.

Here are a few EXAMPLES sections (in formatted form for readability)
that demonstate how EXAMPLES sections should look like:

  EXAMPLES  /* from chroot(2) */
     The following example changes the root directory to newroot,
     sets the current directory to the new root, and drops some
     setuid privileges.  There may be other privileges which need to
     be dropped as well.

           #include <err.h>
           #include <unistd.h>

           if (chroot(newroot) != 0 || chdir("/") != 0)
                   err(1, "%s", newroot);
           setresuid(getuid(), getuid(), getuid());

  EXAMPLES  /* from write(2) */
     A typical loop allowing partial writes looks like this:

     const char *buf;
     size_t bsz, off;
     ssize_t nw;
     int d;

     for (off = 0; off < bsz; off += nw)
             if ((nw = write(d, buf + off, bsz - off)) == 0 || nw == -1)
                     err(1, "write");

  EXAMPLES  /* from BIO_s_fd(3) */
     This is a file descriptor BIO version of "Hello World":

           BIO *out;
           out = BIO_new_fd(fileno(stdout), BIO_NOCLOSE);
           BIO_printf(out, "Hello World\n");
           BIO_free(out);

  EXAMPLES  /* from MB_CUR_MAX(3) */
     Size a buffer in a portable way to hold one single multibyte character:

           char     buf[MB_LEN_MAX];
           wchar_t  wchar;  /* input value */

           if (wctomb(buf, wchar) == -1)
                   /* error */

     Switch between code handling the ascii(7) and UTF-8 character
     encodings in an OpenBSD-specific way (not portable):

           if (MB_CUR_MAX == 1) {
                   /* Code to handle ASCII-encoded single-byte strings. */
           } else {
                   /* Code to handle UTF-8-encoded multibyte strings. */
           }

  EXAMPLES  /* from malloc(3) */
     If malloc() must be used with multiplication, be sure to test for
     overflow:

           size_t num, size;
           ...

           /* Check for size_t overflow */
           if (size && num > SIZE_MAX / size)
                   errc(1, EOVERFLOW, "overflow");

           if ((p = malloc(num * size)) == NULL)
                   err(1, NULL);

     The above test is not sufficient in all cases.  For example,
     multiplying ints requires a different set of checks:

           int num, size;
           ...

           /* Avoid invalid requests */
           if (size < 0 || num < 0)
                   errc(1, EOVERFLOW, "overflow");

           /* Check for signed int overflow */
           if (size && num > INT_MAX / size)
                   errc(1, EOVERFLOW, "overflow");

           if ((p = malloc(num * size)) == NULL)
                   err(1, NULL);

     Assuming the implementation checks for integer overflow as
     OpenBSD does, it is much easier to use calloc(), reallocarray(),
     or recallocarray().

     The above examples could be simplified to:

           if ((p = reallocarray(NULL, num, size)) == NULL)
                   err(1, NULL);

     or at the cost of initialization:

           if ((p = calloc(num, size)) == NULL)
                   err(1, NULL);

Yours,
  Ingo
