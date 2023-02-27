Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 421B86A4FE2
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 00:57:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjB0X47 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 18:56:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjB0X47 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 18:56:59 -0500
Received: from mail.schemamania.org (rrcs-50-75-19-234.nys.biz.rr.com [50.75.19.234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0B1FB5FD4
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 15:56:56 -0800 (PST)
Received: from oak.schemamania.org (localhost [IPv6:::1])
        by mail.schemamania.org (Postfix) with ESMTP id 1984B256FABA;
        Mon, 27 Feb 2023 14:17:15 -0500 (EST)
Date:   Mon, 27 Feb 2023 14:17:15 -0500
From:   "James K. Lowden" <jklowden@schemamania.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: man-intro(1) [patch]
Message-Id: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>
X-Mailer: Sylpheed 3.4.3 (GTK+ 2.24.28; x86_64--netbsd)
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="Multipart=_Mon__27_Feb_2023_14_17_15_-0500_gTwY509baz+EZW9k"
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--Multipart=_Mon__27_Feb_2023_14_17_15_-0500_gTwY509baz+EZW9k
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 7 Sep 2022 00:13:18 +0200
Alejandro Colomar <alx.manpages@gmail.com> 
wrote to <groff@gnu.org>:

> If someone wants to send it as a patch, I'm open to discussing it.
> I remember having some concerns when I read the page, but I don't 
> remember now about them.  I'd be happy to discuss it with a patch
> sent to linux-man@.

As requested, attached page is quoted below in line.  

--jikl

[snip]
.Dd May 17, 2021
.Dt MAN-INTRO 1
.\"Os [OPERATING_SYSTEM] [version/release]
.Sh NAME
.Nm man-intro
.Sh DESCRIPTION
Most of the software installed on the system you are using is
documented with .Em "man pages"
and are displayed with the
.Ic man
command. The word
.Dq man
here refers to
.Dq manual ,
as in a reference manual. This page introduces how the manual is
organized, how it works, and offers some advice on how to use it. .Pp
To view a man page, you type
.Pp
.D1 Ic man Fa name
.Pp
where
.Fa name
is the thing you want to know about.
.Pp
References to the manual and what it documents are often
denoted with the name followed by a section number, e.g.,
.Pp
.D1 Xr ls 1
.Pp
refers to the
.Em ls
command, as documented in section 1.  There are other sections for
other kinds of things, described later. 
.Pp
You may have noticed that the system also seems to have a
.Dq help
command.  Likely that's because you're using the
.Xr bash 1
shell to enter your commands.  Bash includes what's known as
.Dq built-in
commands \(em commands supplied by bash itself \(em of which
.Dq help
is one.  The bash help feature documents bash built-in commands.
For instance,
.Pp
.D1 Ic help Li help
.Pp
describes the bash
.Dq help
command, and
.Pp
.D1 Ic help Li cd
.Pp
describes the bash
.Dq cd
command.
.Pp
A built-in commands in the shell sometimes may also exist as a
utility.  It may be instructive to compare the descriptions of
.Xr time 1
in 
.Bd -literal -offset indent 
.Ic help Li time
.Ic man Li time
.Ed 
.
.Sh "man Page Conventions"
Most man pages follow a standard structure beginning with NAME,
SYNOPSIS, and DESCRIPTION.  The man page for a command defines the
possible options, error messages, and exit status.  For a function, it
defines the arguments, along with the meaning of any return code and
possible errors.  Commands and functions may both be influenced by
environment variables and/or configuration files.  Near the end is a
SEE ALSO section of related topics in the manual.
.Pp
A template in
.Xr groff_mdoc 7
provides more detail.  As you grow familiar with the manual, you'll
find the conventional headings to be useful milestones.
.
.Sh The\ man\ Utility
All man pages on your system offers are formatted uniformly. The
.Xr man 1
utility sends the requested page through a system that formats it and
presents it for viewing.  That system consists of several
interchangeable parts that vary across operating systems.  The two
most important parts are the
.Em formatter ,
and the
.Em pager ,
described next.
If you invoke
.Pp
.D1 Ic man Li man
.Pp
you will see the man utility has many options, and also environment
variables that control how .Xr man 1
behaves, and aspects of the formatter and pager.  You won't often have
reason to alter them, but you might, and, if you do, it's useful to
know they're there.
.
.Sh Formatter
The
.Em formatter
is the program that reads the man-page file and produces
human-readable output, complete with paragraphs, boldface, italics,
and underscores. The formatter is usually capable of producing a
variety of output formats, depending on how the output will be viewed.
In addition to viewing them in a terminal, for instance, the formatter
may be able to produce PDF or HTML files. Some systems opt to include
in the base system a limited version of the formatter that can be
amplified from the packaging system.
.Pp
The most common formatter is GNU groff, an implementation of the AT&T
.Xr troff 1
typesetting system.  In addition to man pages, groff is used to
produce a variety of other kinds of documents, from presentations to
books.  Another formatter sometimes used is
.Xr mandoc 1 Ns ,
which is not a typesetting system but rather is specialized for man
page formats. .
.Sh Pager
The output of the
.Em formatter
is normally sent to the 
.Em pager ,
so called because it
.Dq pages
the output in a terminal, allowing the user to scroll the text up and
down, instead of having it all run off the top of the screen.  The
most commonly used pager is GNU
.Xr less 1 Ns ,
a play on the name of an older utility,
.Xr more 1 Ns ,
that let the user see
.Dq more
text (the next
.Dq page )
by pressing the space bar.  To get the most out of your manual, it's
very helpful to get to know your pager.  A quick sketch follows, but
see
.Xr less 1
for the whole enchilada.
.
.Sh "Introducing GNU less"
GNU
.Xr less 1
has a minimalist user interface, to reserve the most possible space
for the text it's displaying.  Many commands are a single keystroke.
In case you get stuck, remember the 2 most important keys:
.Pp
.Bl -tag -offset indent -width nnnnn -compact
.It h
to access the help
.It q
to quit the help
.It q
to quit
.Xr less 1
and exit back to the command prompt
.El
.Pp
Forget trying ^C to quit;
.Ql q
is your friend.
.Pp
Use the arrow keys to move up and down through the
.Dq page .
The space bar will scroll a screenful of text at a time, and the enter
key will move one line at a time. Some other up/down keys are:
.Pp
.Bl -tag -offset indent -width nnnnn -compact
.It G
go to end of document
.It f
down one screenful (toward the end)
.It d
down one \(12 screenful
.It j
down one line
.It k
up one line
.It u
up one \(12 screenful
.It b
up one screenful (toward the beginning)
.It g
go to beginning of document
.El
.Pp
.Pp
Once you can move up and down, the next most important feature of
.Xr less 1
is the ability to search the text using regular expressions.  To start
a search, press the
.Ql /
key.  In response, less puts a
.Ql /
in the lower left corner as a prompt.  Type the string to search for.
For example, the sequence:
.Bd -literal -offset indent
/
^FILE
<enter>
.Ed
.Pp
searches for the FILE section, where the word
.Dq FILE
appears at the beginning of a line.  (The
.Ql ^
character anchors the search at the left edge.) 
Similarly, to search for environment variables that affect execution, 
.Pp
.Bd -literal -offset indent
/
^ENV
<enter>
.Ed
.Pp
Of course, you can search for any string, not only headings. If the
1st occurrence isn't what you're looking for, you can repeat the search
backwards or forwards from where you are with
.Pp
.Bl -tag -offset indent -width nnnnn -compact
.It n
to repeat the last search down, toward the end
.It N
to repeat the last search up, toward the beginning
.El
.Pp
The less utility has dozens of options that can be set on the command
line, and changed while it's running, from the keyboard.  A helpful
one to know about affects whether searches are case-sensitive.  To
toggle case-sensitivity, type
.Ql -
indicating an option change, followed by
.Ql i ,
meaning
.Em "ignore case" .
.Pp
The options that
.Xr man 1
passes to 
.Xr less 1
when it starts is controlled by the configuration for
.Xr man 1 .
Specifically, the
.Ev MANPAGER
environment variable controls which pager to use, and with what options.
.
.Sh "Cross References"
The weakest part of user interface to the manual is its lack of
support for hyperlinks.  There is no way to search documents by index
term, or jump to a section from a table of contents, nor any way to
jump back and forth between related documents. Most of the time if
you're reading the page for
.Ql X
and want to jump to
.Ql Y ,
the simplest way is just to type
.Ql q
to exit
.Xr less 1
and type
.Ic man Ar Y Ns .
Occasionally, it can be handy to type
.Ql \&!
to start a subprocess, and type 
.Ic man Ar Y
at the prompt.  That way, when you press
.Ql q
to exit
.Ar Y ,
you're returned to the parent process, namely
.Xr less 1 ,
still reading
.Ar X .
.
.Sh "Organization of the Manual"
.Pp
The whole manual covers much more than just command-line utilities. It
is divided into numbered sections encompassing everything from
programming interfaces to file formats:
.Pp
.Bl -enum -offset indent -compact
.It
General Commands
.It
System Calls
.It
Library Functions
.It
Kernel Interfaces
.It
File Formats
.It
Games
.It
Miscellaneous Information
.It
System Management Utilities
.It
Kernel Internal Functions
.El
.Pp
If the man page you're reading doesn't seem related to what you're
looking for, check the section number shown in the top left corner.  If
that's not the section you meant to search, you can be more specific by
typing
.Pp
.D1 Ic man Ar section Ar name
or
.D1 Ic man Fl s Ar section Ar name
.Pp
For instance, there is a
.Xr printf 1
and
.Xr printf 3 .
.Xr printf 1
is utility ,
and
.Xr printf 3
is
the famous C function.  To distinguish, you can use
.Pp
.D1 Ic man Li 1 printf 
or 
.D1 Ic man Li 3 printf 
.Pp
If you don't know what
.Em name
you need, you can search by keyword with the
.Fl k
option or
.Xr apropos 1 ,
e.g.,
.Pp
.D1 Ic man Fl s Li 1 Fl k Li html
.Pp
As a new user, you'll spend most of your time with section 1.  If
you're administering a system, you'll use section 8.  If you're
programming with C, you'll use sections 2 and 3.  Most configuration
files are documented in section 5.
.
.Sh "Read on, MacDuff"
Exhaustive as it is \(em it's not uncommon for system to have 3000
man pages installed \(em the manual can sometimes be daunting.  The
reader is expected to bring the knowledge required to understand the
subject.  For example, consider this line from the first paragraph of
the description of
.Xr stat 1 ,
.Bd -ragged -offset indent
If no argument is given,
.Ic stat
displays information about the file descriptor for standard input.
.Ed
.Pp
To understand that sentence, the reader must know that
.Dq argument
is not
.Dq quarrel ,
what a
.Dq "file descriptor"
is, and
what
.Dq "standard input"
means.  Without that knowledge, the sentence is incomprehensible.  The
manual doesn't explain those terms, though, because to do so would
make it wordy and redundant.  They are basic terminology used
throughout the manual.  Once mastered, any explanation of them would
only get in the way of the particular information contained in the
.Xr stat 1
page.
.Pp
Remember, the
manual is a
.Em reference
manual, not a tutorial or a user guide.  If you find yourself
struggling to understand a man page, you might want to seek out
instructional material.  Then, with some grasp of the
.Dq "lay of the land" ,
you can return to the manual better equipped to understand it. 
.
.Sh BUGS
The manual is meant to document, completely and correctly, what the
user must do to make the thing do what is says it does. There is a
name for any discrepancy between what the manual says and what the
thing actually does: a bug.  It may be an error in the documentation
or in the program, but it's definitely an error.  If you think you've
found one, most free software projects welcome accurate problem
reports in the form,
.Dq "the manual says X but the software does Y" .
.
.Sh "SEE ALSO"
.Bd -unfilled
.Xr less 1
.Xr man 1
.Xr groff 1
.Ed

\"  LocalWords:  Dd groff mandoc Ns enchilada nnnnn screenful ENV Ar
\"  LocalWords:  MANPAGER enum Ic Fl printf Li html MacDuff stat
[pins]


--Multipart=_Mon__27_Feb_2023_14_17_15_-0500_gTwY509baz+EZW9k
Content-Type: application/octet-stream;
 name="man-intro.1"
Content-Disposition: attachment;
 filename="man-intro.1"
Content-Transfer-Encoding: base64

LkRkIE1heSAxNywgMjAyMQouRHQgTUFOLUlOVFJPIDEKLlwiT3MgW09QRVJBVElOR19TWVNURU1d
IFt2ZXJzaW9uL3JlbGVhc2VdCi5TaCBOQU1FCi5ObSBtYW4taW50cm8KLlNoIERFU0NSSVBUSU9O
Ck1vc3Qgb2YgdGhlIHNvZnR3YXJlIGluc3RhbGxlZCBvbiB0aGUgc3lzdGVtIHlvdSBhcmUgdXNp
bmcgaXMgZG9jdW1lbnRlZCB3aXRoCi5FbSAibWFuIHBhZ2VzIgphbmQgYXJlIGRpc3BsYXllZCB3
aXRoIHRoZQouSWMgbWFuCmNvbW1hbmQuIFRoZSB3b3JkCi5EcSBtYW4KaGVyZSByZWZlcnMgdG8K
LkRxIG1hbnVhbCAsCmFzIGluIGEgcmVmZXJlbmNlIG1hbnVhbC4gVGhpcyBwYWdlIGludHJvZHVj
ZXMgaG93IHRoZSBtYW51YWwgaXMgb3JnYW5pemVkLCBob3cgaXQgd29ya3MsIGFuZCBvZmZlcnMg
c29tZSBhZHZpY2Ugb24gaG93IHRvIHVzZSBpdC4KLlBwClRvIHZpZXcgYSBtYW4gcGFnZSwgeW91
IHR5cGUKLlBwCi5EMSBJYyBtYW4gRmEgbmFtZQouUHAKd2hlcmUKLkZhIG5hbWUKaXMgdGhlIHRo
aW5nIHlvdSB3YW50IHRvIGtub3cgYWJvdXQuCi5QcApSZWZlcmVuY2VzIHRvIHRoZSBtYW51YWwg
YW5kIHdoYXQgaXQgZG9jdW1lbnRzIGFyZSBvZnRlbgpkZW5vdGVkIHdpdGggdGhlIG5hbWUgZm9s
bG93ZWQgYnkgYSBzZWN0aW9uIG51bWJlciwgZS5nLiwKLlBwCi5EMSBYciBscyAxCi5QcApyZWZl
cnMgdG8gdGhlCi5FbSBscwpjb21tYW5kLCBhcyBkb2N1bWVudGVkIGluIHNlY3Rpb24gMS4gIFRo
ZXJlIGFyZSBvdGhlciBzZWN0aW9ucyBmb3IKb3RoZXIga2luZHMgb2YgdGhpbmdzLCBkZXNjcmli
ZWQgbGF0ZXIuIAouUHAKWW91IG1heSBoYXZlIG5vdGljZWQgdGhhdCB0aGUgc3lzdGVtIGFsc28g
c2VlbXMgdG8gaGF2ZSBhCi5EcSBoZWxwCmNvbW1hbmQuICBMaWtlbHkgdGhhdCdzIGJlY2F1c2Ug
eW91J3JlIHVzaW5nIHRoZQouWHIgYmFzaCAxCnNoZWxsIHRvIGVudGVyIHlvdXIgY29tbWFuZHMu
ICBCYXNoIGluY2x1ZGVzIHdoYXQncyBrbm93biBhcwouRHEgYnVpbHQtaW4KY29tbWFuZHMgXChl
bSBjb21tYW5kcyBzdXBwbGllZCBieSBiYXNoIGl0c2VsZiBcKGVtIG9mIHdoaWNoCi5EcSBoZWxw
CmlzIG9uZS4gIFRoZSBiYXNoIGhlbHAgZmVhdHVyZSBkb2N1bWVudHMgYmFzaCBidWlsdC1pbiBj
b21tYW5kcy4KRm9yIGluc3RhbmNlLAouUHAKLkQxIEljIGhlbHAgTGkgaGVscAouUHAKZGVzY3Jp
YmVzIHRoZSBiYXNoCi5EcSBoZWxwCmNvbW1hbmQsIGFuZAouUHAKLkQxIEljIGhlbHAgTGkgY2QK
LlBwCmRlc2NyaWJlcyB0aGUgYmFzaAouRHEgY2QKY29tbWFuZC4KLlBwCkEgYnVpbHQtaW4gY29t
bWFuZHMgaW4gdGhlIHNoZWxsIHNvbWV0aW1lcyBtYXkgYWxzbyBleGlzdCBhcyBhCnV0aWxpdHku
ICBJdCBtYXkgYmUgaW5zdHJ1Y3RpdmUgdG8gY29tcGFyZSB0aGUgZGVzY3JpcHRpb25zIG9mCi5Y
ciB0aW1lIDEKaW4gCi5CZCAtbGl0ZXJhbCAtb2Zmc2V0IGluZGVudCAKLkljIGhlbHAgTGkgdGlt
ZQouSWMgbWFuIExpIHRpbWUKLkVkIAouCi5TaCAibWFuIFBhZ2UgQ29udmVudGlvbnMiCk1vc3Qg
bWFuIHBhZ2VzIGZvbGxvdyBhIHN0YW5kYXJkIHN0cnVjdHVyZSBiZWdpbm5pbmcgd2l0aCBOQU1F
LApTWU5PUFNJUywgYW5kIERFU0NSSVBUSU9OLiAgVGhlIG1hbiBwYWdlIGZvciBhIGNvbW1hbmQg
ZGVmaW5lcyB0aGUKcG9zc2libGUgb3B0aW9ucywgZXJyb3IgbWVzc2FnZXMsIGFuZCBleGl0IHN0
YXR1cy4gIEZvciBhIGZ1bmN0aW9uLCBpdApkZWZpbmVzIHRoZSBhcmd1bWVudHMsIGFsb25nIHdp
dGggdGhlIG1lYW5pbmcgb2YgYW55IHJldHVybiBjb2RlIGFuZApwb3NzaWJsZSBlcnJvcnMuICBD
b21tYW5kcyBhbmQgZnVuY3Rpb25zIG1heSBib3RoIGJlIGluZmx1ZW5jZWQgYnkKZW52aXJvbm1l
bnQgdmFyaWFibGVzIGFuZC9vciBjb25maWd1cmF0aW9uIGZpbGVzLiAgTmVhciB0aGUgZW5kIGlz
IGEKU0VFIEFMU08gc2VjdGlvbiBvZiByZWxhdGVkIHRvcGljcyBpbiB0aGUgbWFudWFsLgouUHAK
QSB0ZW1wbGF0ZSBpbgouWHIgZ3JvZmZfbWRvYyA3CnByb3ZpZGVzIG1vcmUgZGV0YWlsLiAgQXMg
eW91IGdyb3cgZmFtaWxpYXIgd2l0aCB0aGUgbWFudWFsLCB5b3UnbGwKZmluZCB0aGUgY29udmVu
dGlvbmFsIGhlYWRpbmdzIHRvIGJlIHVzZWZ1bCBtaWxlc3RvbmVzLgouCi5TaCBUaGVcIG1hblwg
VXRpbGl0eQpBbGwgbWFuIHBhZ2VzIG9uIHlvdXIgc3lzdGVtIG9mZmVycyBhcmUgZm9ybWF0dGVk
IHVuaWZvcm1seS4gVGhlCi5YciBtYW4gMQp1dGlsaXR5IHNlbmRzIHRoZSByZXF1ZXN0ZWQgcGFn
ZSB0aHJvdWdoIGEgc3lzdGVtIHRoYXQgZm9ybWF0cyBpdCBhbmQKcHJlc2VudHMgaXQgZm9yIHZp
ZXdpbmcuICBUaGF0IHN5c3RlbSBjb25zaXN0cyBvZiBzZXZlcmFsCmludGVyY2hhbmdlYWJsZSBw
YXJ0cyB0aGF0IHZhcnkgYWNyb3NzIG9wZXJhdGluZyBzeXN0ZW1zLiAgVGhlIHR3bwptb3N0IGlt
cG9ydGFudCBwYXJ0cyBhcmUgdGhlCi5FbSBmb3JtYXR0ZXIgLAphbmQgdGhlCi5FbSBwYWdlciAs
CmRlc2NyaWJlZCBuZXh0LgpJZiB5b3UgaW52b2tlCi5QcAouRDEgSWMgbWFuIExpIG1hbgouUHAK
eW91IHdpbGwgc2VlIHRoZSBtYW4gdXRpbGl0eSBoYXMgbWFueSBvcHRpb25zLCBhbmQgYWxzbyBl
bnZpcm9ubWVudCB2YXJpYWJsZXMgdGhhdCBjb250cm9sIGhvdwouWHIgbWFuIDEKYmVoYXZlcywg
YW5kIGFzcGVjdHMgb2YgdGhlIGZvcm1hdHRlciBhbmQgcGFnZXIuICBZb3Ugd29uJ3Qgb2Z0ZW4g
aGF2ZQpyZWFzb24gdG8gYWx0ZXIgdGhlbSwgYnV0IHlvdSBtaWdodCwgYW5kLCBpZiB5b3UgZG8s
IGl0J3MgdXNlZnVsIHRvCmtub3cgdGhleSdyZSB0aGVyZS4KLgouU2ggRm9ybWF0dGVyClRoZQou
RW0gZm9ybWF0dGVyCmlzIHRoZSBwcm9ncmFtIHRoYXQgcmVhZHMgdGhlIG1hbi1wYWdlIGZpbGUg
YW5kIHByb2R1Y2VzCmh1bWFuLXJlYWRhYmxlIG91dHB1dCwgY29tcGxldGUgd2l0aCBwYXJhZ3Jh
cGhzLCBib2xkZmFjZSwgaXRhbGljcywKYW5kIHVuZGVyc2NvcmVzLiBUaGUgZm9ybWF0dGVyIGlz
IHVzdWFsbHkgY2FwYWJsZSBvZiBwcm9kdWNpbmcgYQp2YXJpZXR5IG9mIG91dHB1dCBmb3JtYXRz
LCBkZXBlbmRpbmcgb24gaG93IHRoZSBvdXRwdXQgd2lsbCBiZSB2aWV3ZWQuCkluIGFkZGl0aW9u
IHRvIHZpZXdpbmcgdGhlbSBpbiBhIHRlcm1pbmFsLCBmb3IgaW5zdGFuY2UsIHRoZSBmb3JtYXR0
ZXIKbWF5IGJlIGFibGUgdG8gcHJvZHVjZSBQREYgb3IgSFRNTCBmaWxlcy4gU29tZSBzeXN0ZW1z
IG9wdCB0byBpbmNsdWRlCmluIHRoZSBiYXNlIHN5c3RlbSBhIGxpbWl0ZWQgdmVyc2lvbiBvZiB0
aGUgZm9ybWF0dGVyIHRoYXQgY2FuIGJlCmFtcGxpZmllZCBmcm9tIHRoZSBwYWNrYWdpbmcgc3lz
dGVtLgouUHAKVGhlIG1vc3QgY29tbW9uIGZvcm1hdHRlciBpcyBHTlUgZ3JvZmYsIGFuIGltcGxl
bWVudGF0aW9uIG9mIHRoZSBBVCZUCi5YciB0cm9mZiAxCnR5cGVzZXR0aW5nIHN5c3RlbS4gIElu
IGFkZGl0aW9uIHRvIG1hbiBwYWdlcywgZ3JvZmYgaXMgdXNlZCB0bwpwcm9kdWNlIGEgdmFyaWV0
eSBvZiBvdGhlciBraW5kcyBvZiBkb2N1bWVudHMsIGZyb20gcHJlc2VudGF0aW9ucyB0bwpib29r
cy4gIEFub3RoZXIgZm9ybWF0dGVyIHNvbWV0aW1lcyB1c2VkIGlzCi5YciBtYW5kb2MgMSBOcyAs
CndoaWNoIGlzIG5vdCBhIHR5cGVzZXR0aW5nIHN5c3RlbSBidXQgcmF0aGVyIGlzIHNwZWNpYWxp
emVkIGZvciBtYW4gcGFnZSBmb3JtYXRzLgouCi5TaCBQYWdlcgpUaGUgb3V0cHV0IG9mIHRoZQou
RW0gZm9ybWF0dGVyCmlzIG5vcm1hbGx5IHNlbnQgdG8gdGhlIAouRW0gcGFnZXIgLApzbyBjYWxs
ZWQgYmVjYXVzZSBpdAouRHEgcGFnZXMKdGhlIG91dHB1dCBpbiBhIHRlcm1pbmFsLCBhbGxvd2lu
ZyB0aGUgdXNlciB0byBzY3JvbGwgdGhlIHRleHQgdXAgYW5kCmRvd24sIGluc3RlYWQgb2YgaGF2
aW5nIGl0IGFsbCBydW4gb2ZmIHRoZSB0b3Agb2YgdGhlIHNjcmVlbi4gIFRoZQptb3N0IGNvbW1v
bmx5IHVzZWQgcGFnZXIgaXMgR05VCi5YciBsZXNzIDEgTnMgLAphIHBsYXkgb24gdGhlIG5hbWUg
b2YgYW4gb2xkZXIgdXRpbGl0eSwKLlhyIG1vcmUgMSBOcyAsCnRoYXQgbGV0IHRoZSB1c2VyIHNl
ZQouRHEgbW9yZQp0ZXh0ICh0aGUgbmV4dAouRHEgcGFnZSApCmJ5IHByZXNzaW5nIHRoZSBzcGFj
ZSBiYXIuICBUbyBnZXQgdGhlIG1vc3Qgb3V0IG9mIHlvdXIgbWFudWFsLCBpdCdzCnZlcnkgaGVs
cGZ1bCB0byBnZXQgdG8ga25vdyB5b3VyIHBhZ2VyLiAgQSBxdWljayBza2V0Y2ggZm9sbG93cywg
YnV0CnNlZQouWHIgbGVzcyAxCmZvciB0aGUgd2hvbGUgZW5jaGlsYWRhLgouCi5TaCAiSW50cm9k
dWNpbmcgR05VIGxlc3MiCkdOVQouWHIgbGVzcyAxCmhhcyBhIG1pbmltYWxpc3QgdXNlciBpbnRl
cmZhY2UsIHRvIHJlc2VydmUgdGhlIG1vc3QgcG9zc2libGUgc3BhY2UKZm9yIHRoZSB0ZXh0IGl0
J3MgZGlzcGxheWluZy4gIE1hbnkgY29tbWFuZHMgYXJlIGEgc2luZ2xlIGtleXN0cm9rZS4KSW4g
Y2FzZSB5b3UgZ2V0IHN0dWNrLCByZW1lbWJlciB0aGUgMiBtb3N0IGltcG9ydGFudCBrZXlzOgou
UHAKLkJsIC10YWcgLW9mZnNldCBpbmRlbnQgLXdpZHRoIG5ubm5uIC1jb21wYWN0Ci5JdCBoCnRv
IGFjY2VzcyB0aGUgaGVscAouSXQgcQp0byBxdWl0IHRoZSBoZWxwCi5JdCBxCnRvIHF1aXQKLlhy
IGxlc3MgMQphbmQgZXhpdCBiYWNrIHRvIHRoZSBjb21tYW5kIHByb21wdAouRWwKLlBwCkZvcmdl
dCB0cnlpbmcgXkMgdG8gcXVpdDsKLlFsIHEKaXMgeW91ciBmcmllbmQuCi5QcApVc2UgdGhlIGFy
cm93IGtleXMgdG8gbW92ZSB1cCBhbmQgZG93biB0aHJvdWdoIHRoZQouRHEgcGFnZSAuClRoZSBz
cGFjZSBiYXIgd2lsbCBzY3JvbGwgYSBzY3JlZW5mdWwgb2YgdGV4dCBhdCBhIHRpbWUsIGFuZCB0
aGUgZW50ZXIKa2V5IHdpbGwgbW92ZSBvbmUgbGluZSBhdCBhIHRpbWUuIFNvbWUgb3RoZXIgdXAv
ZG93biBrZXlzIGFyZToKLlBwCi5CbCAtdGFnIC1vZmZzZXQgaW5kZW50IC13aWR0aCBubm5ubiAt
Y29tcGFjdAouSXQgRwpnbyB0byBlbmQgb2YgZG9jdW1lbnQKLkl0IGYKZG93biBvbmUgc2NyZWVu
ZnVsICh0b3dhcmQgdGhlIGVuZCkKLkl0IGQKZG93biBvbmUgXCgxMiBzY3JlZW5mdWwKLkl0IGoK
ZG93biBvbmUgbGluZQouSXQgawp1cCBvbmUgbGluZQouSXQgdQp1cCBvbmUgXCgxMiBzY3JlZW5m
dWwKLkl0IGIKdXAgb25lIHNjcmVlbmZ1bCAodG93YXJkIHRoZSBiZWdpbm5pbmcpCi5JdCBnCmdv
IHRvIGJlZ2lubmluZyBvZiBkb2N1bWVudAouRWwKLlBwCi5QcApPbmNlIHlvdSBjYW4gbW92ZSB1
cCBhbmQgZG93biwgdGhlIG5leHQgbW9zdCBpbXBvcnRhbnQgZmVhdHVyZSBvZgouWHIgbGVzcyAx
CmlzIHRoZSBhYmlsaXR5IHRvIHNlYXJjaCB0aGUgdGV4dCB1c2luZyByZWd1bGFyIGV4cHJlc3Np
b25zLiAgVG8gc3RhcnQKYSBzZWFyY2gsIHByZXNzIHRoZQouUWwgLwprZXkuICBJbiByZXNwb25z
ZSwgbGVzcyBwdXRzIGEKLlFsIC8KaW4gdGhlIGxvd2VyIGxlZnQgY29ybmVyIGFzIGEgcHJvbXB0
LiAgVHlwZSB0aGUgc3RyaW5nIHRvIHNlYXJjaCBmb3IuCkZvciBleGFtcGxlLCB0aGUgc2VxdWVu
Y2U6Ci5CZCAtbGl0ZXJhbCAtb2Zmc2V0IGluZGVudAovCl5GSUxFCjxlbnRlcj4KLkVkCi5QcApz
ZWFyY2hlcyBmb3IgdGhlIEZJTEUgc2VjdGlvbiwgd2hlcmUgdGhlIHdvcmQKLkRxIEZJTEUKYXBw
ZWFycyBhdCB0aGUgYmVnaW5uaW5nIG9mIGEgbGluZS4gIChUaGUKLlFsIF4KY2hhcmFjdGVyIGFu
Y2hvcnMgdGhlIHNlYXJjaCBhdCB0aGUgbGVmdCBlZGdlLikgClNpbWlsYXJseSwgdG8gc2VhcmNo
IGZvciBlbnZpcm9ubWVudCB2YXJpYWJsZXMgdGhhdCBhZmZlY3QgZXhlY3V0aW9uLCAKLlBwCi5C
ZCAtbGl0ZXJhbCAtb2Zmc2V0IGluZGVudAovCl5FTlYKPGVudGVyPgouRWQKLlBwCk9mIGNvdXJz
ZSwgeW91IGNhbiBzZWFyY2ggZm9yIGFueSBzdHJpbmcsIG5vdCBvbmx5IGhlYWRpbmdzLiBJZiB0
aGUKMXN0IG9jY3VycmVuY2UgaXNuJ3Qgd2hhdCB5b3UncmUgbG9va2luZyBmb3IsIHlvdSBjYW4g
cmVwZWF0IHRoZSBzZWFyY2gKYmFja3dhcmRzIG9yIGZvcndhcmRzIGZyb20gd2hlcmUgeW91IGFy
ZSB3aXRoCi5QcAouQmwgLXRhZyAtb2Zmc2V0IGluZGVudCAtd2lkdGggbm5ubm4gLWNvbXBhY3QK
Lkl0IG4KdG8gcmVwZWF0IHRoZSBsYXN0IHNlYXJjaCBkb3duLCB0b3dhcmQgdGhlIGVuZAouSXQg
Tgp0byByZXBlYXQgdGhlIGxhc3Qgc2VhcmNoIHVwLCB0b3dhcmQgdGhlIGJlZ2lubmluZwouRWwK
LlBwClRoZSBsZXNzIHV0aWxpdHkgaGFzIGRvemVucyBvZiBvcHRpb25zIHRoYXQgY2FuIGJlIHNl
dCBvbiB0aGUgY29tbWFuZApsaW5lLCBhbmQgY2hhbmdlZCB3aGlsZSBpdCdzIHJ1bm5pbmcsIGZy
b20gdGhlIGtleWJvYXJkLiAgQSBoZWxwZnVsCm9uZSB0byBrbm93IGFib3V0IGFmZmVjdHMgd2hl
dGhlciBzZWFyY2hlcyBhcmUgY2FzZS1zZW5zaXRpdmUuICBUbwp0b2dnbGUgY2FzZS1zZW5zaXRp
dml0eSwgdHlwZQouUWwgLQppbmRpY2F0aW5nIGFuIG9wdGlvbiBjaGFuZ2UsIGZvbGxvd2VkIGJ5
Ci5RbCBpICwKbWVhbmluZwouRW0gImlnbm9yZSBjYXNlIiAuCi5QcApUaGUgb3B0aW9ucyB0aGF0
Ci5YciBtYW4gMQpwYXNzZXMgdG8gCi5YciBsZXNzIDEKd2hlbiBpdCBzdGFydHMgaXMgY29udHJv
bGxlZCBieSB0aGUgY29uZmlndXJhdGlvbiBmb3IKLlhyIG1hbiAxIC4KU3BlY2lmaWNhbGx5LCB0
aGUKLkV2IE1BTlBBR0VSCmVudmlyb25tZW50IHZhcmlhYmxlIGNvbnRyb2xzIHdoaWNoIHBhZ2Vy
IHRvIHVzZSwgYW5kIHdpdGggd2hhdCBvcHRpb25zLgouCi5TaCAiQ3Jvc3MgUmVmZXJlbmNlcyIK
VGhlIHdlYWtlc3QgcGFydCBvZiB1c2VyIGludGVyZmFjZSB0byB0aGUgbWFudWFsIGlzIGl0cyBs
YWNrIG9mCnN1cHBvcnQgZm9yIGh5cGVybGlua3MuICBUaGVyZSBpcyBubyB3YXkgdG8gc2VhcmNo
IGRvY3VtZW50cyBieSBpbmRleAp0ZXJtLCBvciBqdW1wIHRvIGEgc2VjdGlvbiBmcm9tIGEgdGFi
bGUgb2YgY29udGVudHMsIG5vciBhbnkgd2F5IHRvCmp1bXAgYmFjayBhbmQgZm9ydGggYmV0d2Vl
biByZWxhdGVkIGRvY3VtZW50cy4gTW9zdCBvZiB0aGUgdGltZSBpZgp5b3UncmUgcmVhZGluZyB0
aGUgcGFnZSBmb3IKLlFsIFgKYW5kIHdhbnQgdG8ganVtcCB0bwouUWwgWSAsCnRoZSBzaW1wbGVz
dCB3YXkgaXMganVzdCB0byB0eXBlCi5RbCBxCnRvIGV4aXQKLlhyIGxlc3MgMQphbmQgdHlwZQou
SWMgbWFuIEFyIFkgTnMgLgpPY2Nhc2lvbmFsbHksIGl0IGNhbiBiZSBoYW5keSB0byB0eXBlCi5R
bCBcJiEKdG8gc3RhcnQgYSBzdWJwcm9jZXNzLCBhbmQgdHlwZSAKLkljIG1hbiBBciBZCmF0IHRo
ZSBwcm9tcHQuICBUaGF0IHdheSwgd2hlbiB5b3UgcHJlc3MKLlFsIHEKdG8gZXhpdAouQXIgWSAs
CnlvdSdyZSByZXR1cm5lZCB0byB0aGUgcGFyZW50IHByb2Nlc3MsIG5hbWVseQouWHIgbGVzcyAx
ICwKc3RpbGwgcmVhZGluZwouQXIgWCAuCi4KLlNoICJPcmdhbml6YXRpb24gb2YgdGhlIE1hbnVh
bCIKLlBwClRoZSB3aG9sZSBtYW51YWwgY292ZXJzIG11Y2ggbW9yZSB0aGFuIGp1c3QgY29tbWFu
ZC1saW5lIHV0aWxpdGllcy4gSXQgaXMKZGl2aWRlZCBpbnRvIG51bWJlcmVkIHNlY3Rpb25zIGVu
Y29tcGFzc2luZyBldmVyeXRoaW5nIGZyb20KcHJvZ3JhbW1pbmcgaW50ZXJmYWNlcyB0byBmaWxl
IGZvcm1hdHM6Ci5QcAouQmwgLWVudW0gLW9mZnNldCBpbmRlbnQgLWNvbXBhY3QKLkl0CkdlbmVy
YWwgQ29tbWFuZHMKLkl0ClN5c3RlbSBDYWxscwouSXQKTGlicmFyeSBGdW5jdGlvbnMKLkl0Cktl
cm5lbCBJbnRlcmZhY2VzCi5JdApGaWxlIEZvcm1hdHMKLkl0CkdhbWVzCi5JdApNaXNjZWxsYW5l
b3VzIEluZm9ybWF0aW9uCi5JdApTeXN0ZW0gTWFuYWdlbWVudCBVdGlsaXRpZXMKLkl0Cktlcm5l
bCBJbnRlcm5hbCBGdW5jdGlvbnMKLkVsCi5QcApJZiB0aGUgbWFuIHBhZ2UgeW91J3JlIHJlYWRp
bmcgZG9lc24ndCBzZWVtIHJlbGF0ZWQgdG8gd2hhdCB5b3UncmUgbG9va2luZwpmb3IsIGNoZWNr
IHRoZSBzZWN0aW9uIG51bWJlciBzaG93biBpbiB0aGUgdG9wIGxlZnQgY29ybmVyLiAgSWYgdGhh
dCdzCm5vdCB0aGUgc2VjdGlvbiB5b3UgbWVhbnQgdG8gc2VhcmNoLCB5b3UgY2FuIGJlIG1vcmUg
c3BlY2lmaWMgYnkKdHlwaW5nCi5QcAouRDEgSWMgbWFuIEFyIHNlY3Rpb24gQXIgbmFtZQpvcgou
RDEgSWMgbWFuIEZsIHMgQXIgc2VjdGlvbiBBciBuYW1lCi5QcApGb3IgaW5zdGFuY2UsIHRoZXJl
IGlzIGEKLlhyIHByaW50ZiAxCmFuZAouWHIgcHJpbnRmIDMgLgouWHIgcHJpbnRmIDEKaXMgdXRp
bGl0eSAsCmFuZAouWHIgcHJpbnRmIDMKaXMKdGhlIGZhbW91cyBDIGZ1bmN0aW9uLiAgVG8gZGlz
dGluZ3Vpc2gsIHlvdSBjYW4gdXNlCi5QcAouRDEgSWMgbWFuIExpIDEgcHJpbnRmIApvciAKLkQx
IEljIG1hbiBMaSAzIHByaW50ZiAKLlBwCklmIHlvdSBkb24ndCBrbm93IHdoYXQKLkVtIG5hbWUK
eW91IG5lZWQsIHlvdSBjYW4gc2VhcmNoIGJ5IGtleXdvcmQgd2l0aCB0aGUKLkZsIGsKb3B0aW9u
IG9yCi5YciBhcHJvcG9zIDEgLAplLmcuLAouUHAKLkQxIEljIG1hbiBGbCBzIExpIDEgRmwgayBM
aSBodG1sCi5QcApBcyBhIG5ldyB1c2VyLCB5b3UnbGwgc3BlbmQgbW9zdCBvZiB5b3VyIHRpbWUg
d2l0aCBzZWN0aW9uIDEuICBJZgp5b3UncmUgYWRtaW5pc3RlcmluZyBhIHN5c3RlbSwgeW91J2xs
IHVzZSBzZWN0aW9uIDguICBJZiB5b3UncmUKcHJvZ3JhbW1pbmcgd2l0aCBDLCB5b3UnbGwgdXNl
IHNlY3Rpb25zIDIgYW5kIDMuICBNb3N0IGNvbmZpZ3VyYXRpb24KZmlsZXMgYXJlIGRvY3VtZW50
ZWQgaW4gc2VjdGlvbiA1LgouCi5TaCAiUmVhZCBvbiwgTWFjRHVmZiIKRXhoYXVzdGl2ZSBhcyBp
dCBpcyBcKGVtIGl0J3Mgbm90IHVuY29tbW9uIGZvciBzeXN0ZW0gdG8gaGF2ZSAzMDAwCm1hbiBw
YWdlcyBpbnN0YWxsZWQgXChlbSB0aGUgbWFudWFsIGNhbiBzb21ldGltZXMgYmUgZGF1bnRpbmcu
ICBUaGUKcmVhZGVyIGlzIGV4cGVjdGVkIHRvIGJyaW5nIHRoZSBrbm93bGVkZ2UgcmVxdWlyZWQg
dG8gdW5kZXJzdGFuZCB0aGUKc3ViamVjdC4gIEZvciBleGFtcGxlLCBjb25zaWRlciB0aGlzIGxp
bmUgZnJvbSB0aGUgZmlyc3QgcGFyYWdyYXBoIG9mCnRoZSBkZXNjcmlwdGlvbiBvZgouWHIgc3Rh
dCAxICwKLkJkIC1yYWdnZWQgLW9mZnNldCBpbmRlbnQKSWYgbm8gYXJndW1lbnQgaXMgZ2l2ZW4s
Ci5JYyBzdGF0CmRpc3BsYXlzIGluZm9ybWF0aW9uIGFib3V0IHRoZSBmaWxlIGRlc2NyaXB0b3Ig
Zm9yIHN0YW5kYXJkIGlucHV0LgouRWQKLlBwClRvIHVuZGVyc3RhbmQgdGhhdCBzZW50ZW5jZSwg
dGhlIHJlYWRlciBtdXN0IGtub3cgdGhhdAouRHEgYXJndW1lbnQKaXMgbm90Ci5EcSBxdWFycmVs
ICwKd2hhdCBhCi5EcSAiZmlsZSBkZXNjcmlwdG9yIgppcywgYW5kCndoYXQKLkRxICJzdGFuZGFy
ZCBpbnB1dCIKbWVhbnMuICBXaXRob3V0IHRoYXQga25vd2xlZGdlLCB0aGUgc2VudGVuY2UgaXMg
aW5jb21wcmVoZW5zaWJsZS4gIFRoZQptYW51YWwgZG9lc24ndCBleHBsYWluIHRob3NlIHRlcm1z
LCB0aG91Z2gsIGJlY2F1c2UgdG8gZG8gc28gd291bGQKbWFrZSBpdCB3b3JkeSBhbmQgcmVkdW5k
YW50LiAgVGhleSBhcmUgYmFzaWMgdGVybWlub2xvZ3kgdXNlZAp0aHJvdWdob3V0IHRoZSBtYW51
YWwuICBPbmNlIG1hc3RlcmVkLCBhbnkgZXhwbGFuYXRpb24gb2YgdGhlbSB3b3VsZApvbmx5IGdl
dCBpbiB0aGUgd2F5IG9mIHRoZSBwYXJ0aWN1bGFyIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0
aGUKLlhyIHN0YXQgMQpwYWdlLgouUHAKUmVtZW1iZXIsIHRoZQptYW51YWwgaXMgYQouRW0gcmVm
ZXJlbmNlCm1hbnVhbCwgbm90IGEgdHV0b3JpYWwgb3IgYSB1c2VyIGd1aWRlLiAgSWYgeW91IGZp
bmQgeW91cnNlbGYKc3RydWdnbGluZyB0byB1bmRlcnN0YW5kIGEgbWFuIHBhZ2UsIHlvdSBtaWdo
dCB3YW50IHRvIHNlZWsgb3V0Cmluc3RydWN0aW9uYWwgbWF0ZXJpYWwuICBUaGVuLCB3aXRoIHNv
bWUgZ3Jhc3Agb2YgdGhlCi5EcSAibGF5IG9mIHRoZSBsYW5kIiAsCnlvdSBjYW4gcmV0dXJuIHRv
IHRoZSBtYW51YWwgYmV0dGVyIGVxdWlwcGVkIHRvIHVuZGVyc3RhbmQgaXQuIAouCi5TaCBCVUdT
ClRoZSBtYW51YWwgaXMgbWVhbnQgdG8gZG9jdW1lbnQsIGNvbXBsZXRlbHkgYW5kIGNvcnJlY3Rs
eSwgd2hhdCB0aGUKdXNlciBtdXN0IGRvIHRvIG1ha2UgdGhlIHRoaW5nIGRvIHdoYXQgaXMgc2F5
cyBpdCBkb2VzLiBUaGVyZSBpcyBhCm5hbWUgZm9yIGFueSBkaXNjcmVwYW5jeSBiZXR3ZWVuIHdo
YXQgdGhlIG1hbnVhbCBzYXlzIGFuZCB3aGF0IHRoZQp0aGluZyBhY3R1YWxseSBkb2VzOiBhIGJ1
Zy4gIEl0IG1heSBiZSBhbiBlcnJvciBpbiB0aGUgZG9jdW1lbnRhdGlvbgpvciBpbiB0aGUgcHJv
Z3JhbSwgYnV0IGl0J3MgZGVmaW5pdGVseSBhbiBlcnJvci4gIElmIHlvdSB0aGluayB5b3UndmUK
Zm91bmQgb25lLCBtb3N0IGZyZWUgc29mdHdhcmUgcHJvamVjdHMgd2VsY29tZSBhY2N1cmF0ZSBw
cm9ibGVtCnJlcG9ydHMgaW4gdGhlIGZvcm0sCi5EcSAidGhlIG1hbnVhbCBzYXlzIFggYnV0IHRo
ZSBzb2Z0d2FyZSBkb2VzIFkiIC4KLgouU2ggIlNFRSBBTFNPIgouQmQgLXVuZmlsbGVkCi5YciBs
ZXNzIDEKLlhyIG1hbiAxCi5YciBncm9mZiAxCi5FZAouaWcKLlBwCgpcIiAgTG9jYWxXb3Jkczog
IERkIGdyb2ZmIG1hbmRvYyBOcyBlbmNoaWxhZGEgbm5ubm4gc2NyZWVuZnVsIEVOViBBcgpcIiAg
TG9jYWxXb3JkczogIE1BTlBBR0VSIGVudW0gSWMgRmwgcHJpbnRmIExpIGh0bWwgTWFjRHVmZiBz
dGF0Cg==

--Multipart=_Mon__27_Feb_2023_14_17_15_-0500_gTwY509baz+EZW9k--
