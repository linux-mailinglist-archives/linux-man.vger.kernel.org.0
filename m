Return-Path: <linux-man+bounces-2334-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A33A256B5
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 11:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE1211618B7
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 10:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E5A20013E;
	Mon,  3 Feb 2025 10:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/Lpd0ud"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0471D5176
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 10:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577619; cv=none; b=f6jWA7KYW2kXwIr8u7UnLVDpfxl8aAerQgWBb8H1AVLyo0FebftkYWvsgvmRMCNFriLtHZb814YBaxv4kIonYKTQNryRs4leQcOWZrufA4ulmYo2mgmcoHcMLTzdxwwHusTk/SLr7bJDsMRp5HAx3moqPd2XeaO0szpG1ndudFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577619; c=relaxed/simple;
	bh=hpYr+g3LNuIUwSUkN8l+pY/80QdnKfoK8AZaOH29uGg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=DFLCd0gBg1YYJPHLGGyS3hAylm4Vgk6sWu2l3Rgwk7SQMDdM18p0pqaEDdUW6feOaNbW8d/BbQTmVB6bwBC3DHwc1r2+CoeQwr5DzhUhrqV24COSOBj/TuonJYzKzicw44CdQ7DRg/B4VNDlilFg7O9wQ9Lfn4aFheggu+6lv4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/Lpd0ud; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 027F9C4CED2;
	Mon,  3 Feb 2025 10:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577619;
	bh=hpYr+g3LNuIUwSUkN8l+pY/80QdnKfoK8AZaOH29uGg=;
	h=Date:From:To:Cc:Subject:From;
	b=Q/Lpd0udKgqQARxEEVcfVUMnH4jcOgRJb0gUyZYUWbd+fHLYX4uUDwtlX/M84WgKv
	 8hH9CNb/OoxcMWIupKzrgizgWzwHsshpCNBk29xxml4Xnr1JLVYZtJP6XDQ/GXfZno
	 gybq2x/nzFPsOf6Vkwj5sdMUFIer+KY5BkWc+paLSq+KvHzaHi3qqR4c9JbKBhla9Q
	 X3yJdgrpdbdMVHAFR6+7HH8K/GV2XWIOY/57jxKalTlhg+lazOGwn7KLogrQFV2upl
	 qF62Az9u3uGUGGQtJbGn1bmcDHYtnLARAu5izjFurGtoOn5yC15sN/YkOsh0WwnhAe
	 9RktyT5dyTN5g==
Date: Mon, 3 Feb 2025 11:13:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>,
	Paul Smith <psmith@gnu.org>, Guenther Noack <gnoack@google.com>
Subject: [PATCH 0/3] GNUmakefile, share/mk/: Use ?=, and require users to
 specify -R
Message-ID: <cover.1738577250.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailer: git-send-email 2.47.2

Hi Sam, Paul, Guenther,

I've rumiated this idea for some months already:  I can use ?=, as long
as I force users to add a dummy -R to the command line.  The dummy -R
will only be required if they GNU make(1) is too old (but everyone's
make(1) is too old, because the requirement will be 4.5, so...).  That's
a minor inconvenience, but anyway, I should do it even when 4.5 is out
and I move to ?=, because otherwise people running on old make(1) would
have a broken build system, so I really need to force people to specify
-R.

What do you think about it?

Here are the patches for the Linux man-pages build system.  Please have
a look at them.  :)


Have a lovely day!
Alex

P.S.:  Guenther, I just CCd you in case you were curious about this.  ;)


Alejandro Colomar (3):
  GNUmakefile: Require the user to specify '-R' if their make(1) is too
    old
  share/mk/: Use ?= assignments for user-facing variables
  GNUmakefile: help: Show only variables assigned with '?='

 GNUmakefile                                   | 16 +++++++++-----
 .../mk/configure/build-depends/binutils/ld.mk |  8 +++----
 .../build-depends/bsdextrautils/col.mk        |  6 ++---
 .../mk/configure/build-depends/bzip2/bzip2.mk |  6 ++---
 .../build-depends/checkpatch/checkpatch.mk    |  6 ++---
 .../build-depends/clang-tidy/clang-tidy.mk    |  6 ++---
 .../mk/configure/build-depends/clang/clang.mk |  4 ++--
 .../configure/build-depends/coreutils/cat.mk  |  2 +-
 .../configure/build-depends/coreutils/cp.mk   |  2 +-
 .../configure/build-depends/coreutils/cut.mk  |  2 +-
 .../configure/build-depends/coreutils/echo.mk |  2 +-
 .../configure/build-depends/coreutils/expr.mk |  2 +-
 .../configure/build-depends/coreutils/head.mk |  2 +-
 .../build-depends/coreutils/install.mk        |  8 +++----
 .../configure/build-depends/coreutils/ln.mk   |  2 +-
 .../build-depends/coreutils/mkdir.mk          |  2 +-
 .../build-depends/coreutils/realpath.mk       |  2 +-
 .../configure/build-depends/coreutils/rm.mk   |  2 +-
 .../configure/build-depends/coreutils/sort.mk |  2 +-
 .../configure/build-depends/coreutils/stat.mk |  2 +-
 .../configure/build-depends/coreutils/tac.mk  |  2 +-
 .../configure/build-depends/coreutils/tail.mk |  2 +-
 .../configure/build-depends/coreutils/test.mk |  2 +-
 .../build-depends/coreutils/touch.mk          |  2 +-
 .../configure/build-depends/coreutils/true.mk |  2 +-
 share/mk/configure/build-depends/cpp/cpp.mk   |  6 ++---
 .../build-depends/cppcheck/cppcheck.mk        |  6 ++---
 .../build-depends/cpplint/cpplint.mk          |  6 ++---
 .../build-depends/diffoscope/diffoscope.mk    |  2 +-
 .../configure/build-depends/findutils/find.mk |  2 +-
 .../build-depends/findutils/xargs.mk          |  2 +-
 .../build-depends/fontforge/fontforge.mk      |  6 ++---
 share/mk/configure/build-depends/gcc/cc.mk    |  6 ++---
 share/mk/configure/build-depends/git/git.mk   |  2 +-
 share/mk/configure/build-depends/grep/grep.mk |  2 +-
 .../configure/build-depends/groff-base/eqn.mk |  6 ++---
 .../build-depends/groff-base/grops.mk         |  6 ++---
 .../build-depends/groff-base/grotty.mk        |  6 ++---
 .../build-depends/groff-base/nroff.mk         | 10 ++++-----
 .../configure/build-depends/groff-base/pic.mk |  6 ++---
 .../build-depends/groff-base/preconv.mk       |  6 ++---
 .../configure/build-depends/groff-base/tbl.mk |  2 +-
 .../build-depends/groff-base/troff.mk         |  6 ++---
 .../configure/build-depends/groff/afmtodit.mk | 10 ++++-----
 .../configure/build-depends/groff/gropdf.mk   |  6 ++---
 .../configure/build-depends/groff/pfbtops.mk  |  6 ++---
 .../build-depends/groff/post-grohtml.mk       |  6 ++---
 share/mk/configure/build-depends/gzip/gzip.mk |  6 ++---
 share/mk/configure/build-depends/iwyu/iwyu.mk |  6 ++---
 .../build-depends/libc-bin/locale.mk          |  2 +-
 share/mk/configure/build-depends/lzip/lzip.mk |  6 ++---
 .../configure/build-depends/mandoc/mandoc.mk  |  6 ++---
 .../build-depends/moreutils/sponge.mk         |  2 +-
 .../build-depends/pkgconf/pkgconf.mk          |  8 +++----
 share/mk/configure/build-depends/sed/sed.mk   |  2 +-
 .../build-depends/shellcheck/shellcheck.mk    |  6 ++---
 share/mk/configure/build-depends/tar/tar.mk   |  6 ++---
 .../Tinos-Regular.ttf.mk                      |  2 +-
 .../texlive-fonts-extra/Tinos.pfb.mk          |  2 +-
 .../mk/configure/build-depends/xz-utils/xz.mk |  6 ++---
 .../mk/configure/directory_variables/build.mk |  2 +-
 .../configure/directory_variables/install.mk  | 22 +++++++++----------
 share/mk/configure/man/link_pages.mk          |  2 +-
 share/mk/configure/version.mk                 | 10 ++++-----
 share/mk/configure/xfail.mk                   |  2 +-
 65 files changed, 157 insertions(+), 151 deletions(-)


base-commit: 2904e040ded291a898aa5e74b361d12ec90d5a2d
-- 
2.47.2


